extern crate serde;
#[macro_use]
extern crate serde_derive;
extern crate serde_cbor;

use serde::{Serialize, Deserialize};

/// Public Key wrapper
#[derive(Serialize, Deserialize)]
pub struct Sender(pub [u8; 32]);

impl AsRef<[u8]> for Sender {
    fn as_ref(&self) -> &[u8] {
        self.0.as_ref()
    }
}

mod ffi {
    extern "C" {
        pub fn debug(msg_ptr: *const u8, msg_len: usize);

        pub fn sender(ptr: *mut u8);

        pub fn args(ptr: *mut u8);
        pub fn args_len() -> usize;

        pub fn return_data(value_ptr: *const u8, value_len: usize);

        pub fn set_storage(
            key_ptr: *const u8,
            key_len: usize,
            value_ptr: *const u8,
            value_len: usize,
        );

        pub fn get_storage_len(key_ptr: *const u8, key_len: usize) -> usize;

        pub fn get_storage(key_ptr: *const u8, key_len: usize, value_ptr: *const u8);
    }
}

/// Print debug message to the console.
pub fn debug(msg: &[u8]) {
    unsafe {
        ffi::debug(msg.as_ptr(), msg.len());
    }
}

/// Returns a sender
pub fn sender() -> Sender {
    let mut sender = Sender([0; 32]);
    unsafe {
        ffi::sender(sender.0.as_mut_ptr());
    }
    sender
}

/// Return arguments for current request.
pub fn args<T>() -> T
where
    T: for <'de> Deserialize<'de>,
{
    unsafe {
        let args_len = ffi::args_len();
        let mut args = vec![0u8; args_len];
        ffi::args(args.as_mut_ptr());
        serde_cbor::from_slice(&args).expect("can't parse arguments")
    }
}

/// Return data of the execution.
pub fn return_data(value: &[u8]) {
    unsafe {
        ffi::return_data(value.as_ptr(), value.len());
    }
}

/// Load value from key-value storage.
pub fn get_storage<K, OUT>(key: K) -> Option<OUT>
where
    K: AsRef<[u8]>,
    OUT: for <'de> Deserialize<'de>,
{
    let key = key.as_ref();
    unsafe {
        let value_len = ffi::get_storage_len(key.as_ptr(), key.len());
        if value_len > 0 {
            let mut value = vec![0u8; value_len];
            ffi::get_storage(key.as_ptr(), key.len(), value.as_mut_ptr());
            serde_cbor::from_slice(&value).ok()
        } else {
            None
        }
    }
}

/// Storage value to key-value storage.
pub fn set_storage<K, IN>(key: K, value: &IN)
where
    K: AsRef<[u8]>,
    IN: Serialize,
{
    let key = key.as_ref();
    let value = serde_cbor::to_vec(&value).expect("can't serialize a value");
    unsafe {
        ffi::set_storage(key.as_ptr(), key.len(), value.as_ptr(), value.len());
    }
}
