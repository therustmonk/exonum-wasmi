extern crate exowasm_std as ext;
/*
#[macro_use]
extern crate serde_derive;
extern crate serde_cbor;
*/

#[no_mangle]
pub fn transfer() {
    unimplemented!()
}

#[no_mangle]
pub fn create_wallet() {
    let args = ext::args();
    ext::debug(format!("create wallet called, args={:?}", args).as_bytes());
}
