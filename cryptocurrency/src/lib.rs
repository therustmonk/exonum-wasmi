extern crate exowasm_std as ext;
#[macro_use]
extern crate serde_derive;

use ext::Sender;

const INIT_BALANCE: u64 = 100;

#[derive(Serialize, Deserialize)]
struct Wallet {
    balance: u64,
}

impl Wallet {
    fn new() -> Wallet {
        Wallet {
            balance: INIT_BALANCE,
        }
    }
}


#[derive(Deserialize)]
struct Transfer {
    to: Sender,
}

#[no_mangle]
pub fn transfer_funds() {
    let args: Transfer = ext::args();
}

#[no_mangle]
pub fn create_wallet() {
    let sender = ext::sender();
    if let None::<Wallet> = ext::get_storage(&sender) {
        ext::set_storage(&sender, &Wallet::new());
    }
    ext::debug(format!("create wallet called, sender={:?}", sender.0).as_bytes());
}
