extern crate dotenv;
#[macro_use]
extern crate exonum;
extern crate reqwest;
extern crate failure;
extern crate clap;
extern crate rand;

pub mod messages;

use failure::Error;
use clap::{Arg, App};
use exonum::storage::StorageValue;
use exonum::crypto::gen_keypair;
use exonum::encoding::serialize::FromHex;
use messages::*;

fn main() {
    dotenv::dotenv().ok();
    let matches = App::new("ExoWasm call")
        .version("1.0")
        .arg(Arg::with_name("NAME")
             .help("name of the contract to run")
             .required(true)
             .index(1))
        .arg(Arg::with_name("FUNC")
            .help("func to invoke in contract")
            .required(false)
            .index(2))
        .arg(Arg::with_name("DATA")
            .help("data to pass as argument to contract (in HEX)")
            .required(false)
            .index(3))
        .get_matches();

    let contract_name = matches.value_of("NAME").unwrap();
    let func_name = matches.value_of("FUNC").unwrap();
    let call_data = Vec::from_hex(matches.value_of("DATA").unwrap_or("".into())).expect("Data is not valid hex");;
    
    do_it(contract_name, func_name, &call_data).unwrap();
}

fn do_it(contract_name: &str, func_name: &str, call_data: &[u8]) -> Result<(), Error> {
    let keypair = gen_keypair();
    let seed: u64 = rand::random();
    let tx_call = TxCall::new(contract_name, func_name, call_data, seed, &keypair.1);
    let client = reqwest::Client::new();
    let res = client
        .post("http://localhost:8000/api/services/wasmi/contracts/call")
        .body(tx_call.into_bytes())
        .send()?
        .text()?;
    println!("Response: {:?}", res);
    Ok(())
}
