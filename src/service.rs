use exonum::blockchain::{Blockchain, Service, Transaction, ApiContext};
use exonum::encoding::serialize::FromHex;
use exonum::node::{TransactionSend, ApiSender};
use exonum::messages::{RawTransaction, Message};
use exonum::storage::{Fork, MapIndex, Snapshot};
use exonum::crypto::{Hash, PublicKey};
use exonum::encoding;
use exonum::api::{Api, ApiError};
use iron::prelude::*;
use iron::Handler;
use router::Router;
use serde::Deserialize;
use serde_json;
use bodyparser;
use wasmi::{ModuleInstance, NopExternals, RuntimeValue, ImportsBuilder, Module};

// // // // // // // // // // CONSTANTS // // // // // // // // // //

const SERVICE_ID: u16 = 1;

// Constants for transaction types within the service.
const TX_DEPLOY: u16 = 1;
const TX_CALL: u16 = 2;

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

    pub fn contracts(&self) -> MapIndex<&Snapshot, PublicKey, Contract> {
        MapIndex::new("wasmi.contracts", self.view.as_ref())
    }

    pub fn contract(&self, pub_key: &PublicKey) -> Option<Contract> {
        self.contracts().get(pub_key)
    }
}

impl<'a> WasmSchema<&'a mut Fork> {
    pub fn contracts_mut(&mut self) -> MapIndex<&mut Fork, PublicKey, Contract> {
        MapIndex::new("wasmi.contracts", &mut self.view)
    }
}

// // // // // // // // // // TRANSACTIONS // // // // // // // // // //

message! {
    struct TxDeploy {
        const TYPE = SERVICE_ID;
        const ID = TX_DEPLOY;

        name: &str,
        module: &[u8],
    }
}

message! {
    struct TxCall {
        const TYPE = SERVICE_ID;
        const ID = TX_CALL;

        name: &str,
        seed: u64,
    }
}

// // // // // // // // // // CONTRACTS // // // // // // // // // //

impl Transaction for TxDeploy {
    fn verify(&self) -> bool {
        true
    }

    fn execute(&self, view: &mut Fork) {
        let mut schema = WasmSchema::new(view);
    }
}

impl Transaction for TxCall {
    fn verify(&self) -> bool {
        true
    }

    fn execute(&self, view: &mut Fork) {
        let mut schema = WasmSchema::new(view);
    }
}

// // // // // // // // // // REST API // // // // // // // // // //

#[derive(Clone)]
struct CryptocurrencyApi {
    channel: ApiSender,
    blockchain: Blockchain,
}

impl CryptocurrencyApi {
    fn post_transaction<T>(&self, req: &mut Request) -> IronResult<Response>
    where
        T: Transaction + Clone + for<'de> Deserialize<'de>,
    {
        match req.get::<bodyparser::Struct<T>>() {
            Ok(Some(transaction)) => {
                let transaction: Box<Transaction> = Box::new(transaction);
                let tx_hash = transaction.hash();
                self.channel.send(transaction).map_err(ApiError::from)?;
                self.ok_response(&json!({
                    "tx_hash": tx_hash
                }))
            }
            Ok(None) => Err(ApiError::IncorrectRequest("Empty request body".into()))?,
            Err(e) => Err(ApiError::IncorrectRequest(Box::new(e)))?,
        }
    }
}

impl Api for CryptocurrencyApi {
    fn wire(&self, router: &mut Router) {
        let self_ = self.clone();
        let post_deploy =
            move |req: &mut Request| self_.post_transaction::<TxDeploy>(req);
        let self_ = self.clone();
        let post_call = move |req: &mut Request| self_.post_transaction::<TxCall>(req);

        // Bind handlers to specific routes.
        router.post("/contracts/deploy", post_deploy, "post_deploy");
        router.post("/contracts/call", post_call, "post_call");
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
            TX_CALL => Box::new(TxCall::from_raw(raw)?),
            TX_DEPLOY => Box::new(TxDeploy::from_raw(raw)?),
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
        let api = CryptocurrencyApi {
            channel: ctx.node_channel().clone(),
            blockchain: ctx.blockchain().clone(),
        };
        api.wire(&mut router);
        Some(Box::new(router))
    }
}
