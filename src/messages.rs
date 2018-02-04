#![allow(dead_code)]

pub const SERVICE_ID: u16 = 1;

pub const TX_DEPLOY: u16 = 1;
pub const TX_CALL: u16 = 2;

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
        func: &str,
        data: &[u8],
        seed: u64,
    }
}

encoding_struct! {
    struct Query {
        name: &str,
        func: &str,
        data: &[u8],
    }
}
