use std::io::Read;
use exonum::blockchain::{Blockchain, Service, Transaction, ApiContext};
use exonum::node::{TransactionSend, ApiSender};
use exonum::messages::{RawTransaction, Message};
use exonum::storage::{Fork, MapIndex, Snapshot};
use exonum::crypto::Hash;
use exonum::encoding;
use exonum::api::{Api, ApiError};
use iron::prelude::*;
use iron::Handler;
use router::Router;
use serde::Deserialize;
use messages::*;
use wasm;
use serde_json;

// // // // // // // // // // PERSISTENT DATA // // // // // // // // // //

encoding_struct! {
    struct Contract {
        module: &[u8],
    }
}

// // // // // // // // // // DATA LAYOUT // // // // // // // // // //

pub struct WasmSchema<T> {
    view: T,
}

impl<T: AsRef<Snapshot>> WasmSchema<T> {
    pub fn new(view: T) -> Self {
        WasmSchema { view }
    }

    pub fn contracts(&self) -> MapIndex<&Snapshot, String, Contract> {
        MapIndex::new("wasmi.contracts", self.view.as_ref())
    }

    pub fn contract(&self, name: &String) -> Option<Contract> {
        self.contracts().get(name)
    }

    pub fn storage(&self, name: &str) -> MapIndex<&Snapshot, Vec<u8>, Vec<u8>> {
        let storage_key = format!("wasmi.storage.{}", name);
        MapIndex::new(&storage_key, self.view.as_ref())
    }
}

impl<'a> WasmSchema<&'a mut Fork> {
    pub fn contracts_mut(&mut self) -> MapIndex<&mut Fork, String, Contract> {
        MapIndex::new("wasmi.contracts", &mut self.view)
    }

    pub fn storage_mut(&mut self, name: &str) -> MapIndex<&mut Fork, Vec<u8>, Vec<u8>> {
        let storage_key = format!("wasmi.storage.{}", name);
        MapIndex::new(&storage_key, &mut self.view)
    }
}

impl<'a> wasm::Storage for MapIndex<&'a mut Fork, Vec<u8>, Vec<u8>> {
    fn get(&self, key: &[u8]) -> Vec<u8> {
        MapIndex::get(self, &key.to_vec()).unwrap_or(Vec::new())
    }

    fn set(&mut self, key: &[u8], value: &[u8]) {
        MapIndex::put(self, &key.to_vec(), value.to_vec())
    }
}

impl<'a> wasm::Storage for MapIndex<&'a Snapshot, Vec<u8>, Vec<u8>> {
    fn get(&self, key: &[u8]) -> Vec<u8> {
        MapIndex::get(self, &key.to_vec()).unwrap_or(Vec::new())
    }

    fn set(&mut self, _key: &[u8], _value: &[u8]) {
        panic!("trying to modify snapshot");
    }
}

// // // // // // // // // // CONTRACTS // // // // // // // // // //

impl Transaction for TxDeploy {
    fn verify(&self) -> bool {
        true
    }

    fn execute(&self, view: &mut Fork) {
        info!("Deploying module: {}", self.name());
        let mut schema = WasmSchema::new(view);
        let contract = Contract::new(self.module());
        schema.contracts_mut().put(
            &self.name().to_string(),
            contract,
        );
    }
}

impl Transaction for TxCall {
    fn verify(&self) -> bool {
        true
    }

    fn execute(&self, view: &mut Fork) {
        info!("Calling module: {}", self.name());
        let mut schema = WasmSchema::new(view);
        let contract = schema.contract(&self.name().to_string());
        if let Some(contract) = contract {
            info!("The contract found and calling with a data: {} ( {:?} )", self.func(), self.data());
            let mut storage = schema.storage_mut(self.name());
            let _ = wasm::execute(contract.module(), self.func(), self.data(), &mut storage);
            // TODO: can we return result here?
            // We can to put it in the database and request it later, because we couldn't know
            // when this transaction will be executed.
        }
    }
}

// // // // // // // // // // REST API // // // // // // // // // //

#[derive(Clone)]
struct WasmServiceApi {
    channel: ApiSender,
    blockchain: Blockchain,
}

impl WasmServiceApi {
    fn post_transaction<T>(&self, req: &mut Request) -> IronResult<Response>
    where
        T: Transaction + Clone + for<'de> Deserialize<'de>,
    {
        let mut buf = Vec::new();
        req.body.read_to_end(&mut buf).unwrap();
        let raw = RawTransaction::from_vec(buf);
        let transaction: Box<Transaction> = match raw.message_type() {
            TX_DEPLOY => Box::new(TxDeploy::from_raw(raw).unwrap()),
            TX_CALL => Box::new(TxCall::from_raw(raw).unwrap()),
            id => {
                panic!("wrong transaction type: {}", id);
            }
        };
        let tx_hash = transaction.hash();
        self.channel.send(transaction).map_err(ApiError::from)?;
        self.ok_response(&json!({
            "tx_hash": tx_hash
        }))
    }

    fn query(&self, req: &mut Request) -> IronResult<Response> {
        let mut buf = Vec::new();
        req.body.read_to_end(&mut buf).unwrap();

        let query: Query = match ::serde_json::from_slice(&buf) {
            Ok(q) => q,
            Err(e) => return Err(ApiError::IncorrectRequest(Box::new(e)))?,
        };

        let snapshot = self.blockchain.snapshot();
        let schema = WasmSchema::new(snapshot);
        let contract = schema.contract(&query.name().to_string());
        if let Some(contract) = contract {
            let mut storage = schema.storage(query.name());
            let result = wasm::execute(contract.module(), query.func(), query.data(), &mut storage);
            self.ok_response(&serde_json::to_value(result).unwrap())
        } else {
            self.not_found_response(&serde_json::to_value("not found").unwrap())
        }
    }
}

impl Api for WasmServiceApi {
    fn wire(&self, router: &mut Router) {
        let self_ = self.clone();
        let post_deploy = move |req: &mut Request| self_.post_transaction::<TxDeploy>(req);
        let self_ = self.clone();
        let post_call = move |req: &mut Request| self_.post_transaction::<TxCall>(req);
        let self_ = self.clone();
        let post_query = move |req: &mut Request| self_.query(req);

        // Bind handlers to specific routes.
        router.post("/contracts/deploy", post_deploy, "post_deploy");
        router.post("/contracts/call", post_call, "post_call");
        router.post("/contracts/query", post_query, "post_query");
    }
}

// // // // // // // // // // SERVICE DECLARATION // // // // // // // // // //
pub struct WasmService;

impl Service for WasmService {
    fn service_name(&self) -> &'static str {
        "wasmi"
    }

    fn service_id(&self) -> u16 {
        SERVICE_ID
    }

    fn tx_from_raw(&self, raw: RawTransaction) -> Result<Box<Transaction>, encoding::Error> {
        let trans: Box<Transaction> = match raw.message_type() {
            TX_DEPLOY => Box::new(TxDeploy::from_raw(raw)?),
            TX_CALL => Box::new(TxCall::from_raw(raw)?),
            _ => {
                return Err(encoding::Error::IncorrectMessageType {
                    message_type: raw.message_type(),
                });
            }
        };
        Ok(trans)
    }

    fn state_hash(&self, _: &Snapshot) -> Vec<Hash> {
        vec![]
    }

    fn public_api_handler(&self, ctx: &ApiContext) -> Option<Box<Handler>> {
        let mut router = Router::new();
        let api = WasmServiceApi {
            channel: ctx.node_channel().clone(),
            blockchain: ctx.blockchain().clone(),
        };
        api.wire(&mut router);
        Some(Box::new(router))
    }
}
