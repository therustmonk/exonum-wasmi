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

impl Wallet {
    pub fn increase(self, amount: u64) -> Self {
        let balance = self.balance + amount;
        Wallet { balance }
    }

    pub fn decrease(self, amount: u64) -> Self {
        let balance = self.balance - amount;
        Wallet { balance }
    }
}

#[derive(Deserialize)]
struct Transfer {
    to: Sender,
    amount: u64,
}

#[no_mangle]
pub fn transfer_funds() {
    let args: Transfer = ext::args();
    let sender = ext::sender();
    let from: Option<Wallet> = ext::get_storage(&sender);
    let to: Option<Wallet> = ext::get_storage(&args.to);
    if let (Some(from), Some(to)) = (from, to) {
        if from.balance >= args.amount {
            let from = from.decrease(args.amount);
            let to = to.increase(args.amount);
            ext::set_storage(&sender, &from);
            ext::set_storage(&args.to, &to);
            ext::debug(format!("transfered <{}> from {:?} to {:?}", &args.amount, sender.0, &args.to.0).as_bytes());
        }
    }
}

#[no_mangle]
pub fn create_wallet() {
    let sender = ext::sender();
    if let None::<Wallet> = ext::get_storage(&sender) {
        ext::set_storage(&sender, &Wallet::new());
    }
    ext::debug(format!("create wallet called, sender={:?}", sender.0).as_bytes());
}
