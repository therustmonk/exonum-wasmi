extern crate dotenv;
#[macro_use]
extern crate exonum;
extern crate reqwest;
extern crate failure;
extern crate clap;

pub mod messages;

use std::io::Read;
use std::fs::File;
use failure::Error;
use clap::{Arg, App, SubCommand};
use exonum::storage::StorageValue;
use exonum::crypto::gen_keypair;
use messages::*;

fn main() {
    dotenv::dotenv().ok();
    let matches = App::new("ExoWasm Client")
        .version("1.0")
        .arg(Arg::with_name("INPUT")
             .help("Sets the input file to use")
             .required(true)
             .index(1))
        .get_matches();

    let file = matches.value_of("INPUT").unwrap();
    do_it(file).unwrap();
}

fn do_it(file: &str) -> Result<(), Error> {
    let keypair = gen_keypair();
    let mut module = Vec::new();
    let mut f = File::open(file).expect("file not found");
    f.read_to_end(&mut module)?;
    let tx_deploy = TxDeploy::new("my-contract", &module, &keypair.1);
    let client = reqwest::Client::new();
    let res = client
        .post("http://localhost:8000/api/services/wasmi/contracts/deploy")
        .body(tx_deploy.into_bytes())
        .send()?
        .text()?;
    println!("Response: {:?}", res);
    Ok(())
}
