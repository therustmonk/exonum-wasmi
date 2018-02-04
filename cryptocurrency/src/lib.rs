#![no_std]
#![feature(alloc)]

extern crate exowasm_std;
extern crate byteorder;

// macro use for `format!`
#[macro_use]
extern crate alloc;

use exowasm_std::ext;

#[no_mangle]
pub fn transfer() {
    unimplemented!()
}

#[no_mangle]
pub fn create_wallet() {
    let args = ext::args();
    ext::debug(format!("create wallet called, args={:?}", args).as_bytes());
    unimplemented!()
}
