extern crate dotenv;
#[macro_use]
extern crate exonum;
extern crate reqwest;
extern crate failure;
extern crate clap;
extern crate rand;

pub mod messages;

use std::io::Read;
use std::fs::File;
use failure::Error;
use clap::{Arg, App, SubCommand};
use exonum::storage::StorageValue;
use exonum::crypto::gen_keypair;
use exonum::encoding::serialize::FromHex;
use messages::*;
extern crate serde_json;

fn main() {
    dotenv::dotenv().ok();
    let app = App::new("ExoWasm call")
        .version("1.0")
        .subcommand(
            SubCommand::with_name("call")
                .about(
                    "Make a transaction to contract (i.e make changes to the state)",
                )
                .arg(
                    Arg::with_name("NAME")
                        .help("name of the contract to run")
                        .required(true)
                        .index(1),
                )
                .arg(
                    Arg::with_name("FUNC")
                        .help("func to invoke in contract")
                        .required(false)
                        .index(2),
                )
                .arg(
                    Arg::with_name("DATA")
                        .help("data to pass as argument to contract (in HEX)")
                        .required(false)
                        .index(3),
                ),
        )
        .subcommand(
            SubCommand::with_name("query")
                .about("Make a query to contract (i.e just read the state)")
                .arg(
                    Arg::with_name("NAME")
                        .help("name of the contract to query")
                        .required(true)
                        .index(1),
                )
                .arg(
                    Arg::with_name("FUNC")
                        .help("func to invoke in contract")
                        .required(false)
                        .index(2),
                )
                .arg(
                    Arg::with_name("DATA")
                        .help("data to pass as argument to contract (in HEX)")
                        .required(false)
                        .index(3),
                ),
        )
        .subcommand(
            SubCommand::with_name("deploy")
                .about("Deploy contract on blockchain")
                .arg(
                    Arg::with_name("NAME")
                        .help("name of the contract to deploy")
                        .required(true)
                        .index(1),
                )
                .arg(
                    Arg::with_name("INPUT")
                        .help("Sets the input file to use")
                        .required(true)
                        .index(2),
                ),
        );

    let matches = app.get_matches();

    match matches.subcommand() {
        ("call", Some(matches)) => {
            let contract_name = matches.value_of("NAME").unwrap();
            let func_name = matches.value_of("FUNC").unwrap();
            let call_data = Vec::from_hex(matches.value_of("DATA").unwrap_or("".into()))
                .expect("Data is not valid hex");
            call(contract_name, func_name, &call_data).unwrap();
        }
        ("query", Some(matches)) => {
            let contract_name = matches.value_of("NAME").unwrap();
            let func_name = matches.value_of("FUNC").unwrap();
            let call_data = Vec::from_hex(matches.value_of("DATA").unwrap_or("".into()))
                .expect("Data is not valid hex");
            query(contract_name, func_name, &call_data).unwrap();
        }
        ("deploy", Some(matches)) => {
            let contract_name = matches.value_of("NAME").unwrap();
            let file = matches.value_of("INPUT").unwrap();
            deploy(contract_name, file).unwrap();
        }
        _ => {}
    }
}

fn call(contract_name: &str, func_name: &str, call_data: &[u8]) -> Result<(), Error> {
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

fn query(contract_name: &str, func_name: &str, call_data: &[u8]) -> Result<(), Error> {
    let query = Query::new(contract_name, func_name, call_data);
    let client = reqwest::Client::new();
    let data = ::serde_json::to_string(&query).unwrap();
    let res = client
        .post("http://localhost:8000/api/services/wasmi/contracts/query")
        .body(data)
        .send()?
        .text()?;
    println!("Response: {:?}", res);
    Ok(())
}

fn deploy(contract_name: &str, file: &str) -> Result<(), Error> {
    let keypair = gen_keypair();
    let mut module = Vec::new();
    let mut f = File::open(file).expect("file not found");
    f.read_to_end(&mut module)?;
    let tx_deploy = TxDeploy::new(contract_name, &module, &keypair.1);
    let client = reqwest::Client::new();
    let res = client
        .post("http://localhost:8000/api/services/wasmi/contracts/deploy")
        .body(tx_deploy.into_bytes())
        .send()?
        .text()?;
    println!("Response: {:?}", res);
    Ok(())
}
