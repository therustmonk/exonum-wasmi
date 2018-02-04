#![no_std]
#![feature(lang_items)]
#![feature(core_intrinsics)]
#![feature(global_allocator)]
#![feature(alloc)]

extern crate exowasm_std;
extern crate byteorder;

#[macro_use]
extern crate alloc;

use exowasm_std::ext;

#[no_mangle]
pub fn test_print_args() {
    let args = ext::args();
    ext::debug(b"args!");
    ext::debug(&args);
}

#[no_mangle]
pub fn test_return_args() {
    let args = ext::args();
    ext::return_data(&args);
}

#[no_mangle]
pub fn test_set_storage() {
    let args = ext::args();
    ext::set_storage(&args, b"you found me!");
}

#[no_mangle]
pub fn test_get_storage() {
    let args = ext::args();
    let value = ext::get_storage(&args);
    ext::return_data(&value);
}

#[no_mangle]
pub fn test_counter() {
    use byteorder::{LittleEndian, ByteOrder};

    let counter_buf = ext::get_storage(b"counter");
    let mut curr_value: u32 = if !counter_buf.is_empty() {
        LittleEndian::read_u32(&counter_buf)
    } else {
        0
    };
    curr_value += 1;
    ext::debug(format!("new value is {}", curr_value).as_bytes());

    let mut return_buf = vec![0; 4];
    LittleEndian::write_u32(&mut return_buf, curr_value);
    ext::set_storage(b"counter", &return_buf);
}
