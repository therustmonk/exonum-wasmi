#![no_std]
#![feature(lang_items)]
#![feature(core_intrinsics)]
#![feature(global_allocator)]
#![feature(alloc)]

#[macro_use]
extern crate alloc;
extern crate rlibc;
extern crate wee_alloc;

use alloc::vec::Vec;

mod ext;

#[no_mangle]
#[lang = "panic_fmt"]
pub extern "C" fn panic_fmt(
    args: ::core::fmt::Arguments,
    file: &'static str,
    line: u32,
    col: u32,
) -> ! {
    use core::intrinsics;

    // let msg = format!("{}:{}:{}:{}", args, file, line, col);
    unsafe {
        // ext::debug(&msg);
        intrinsics::abort();
    }
}

#[global_allocator]
static ALLOC: wee_alloc::WeeAlloc = wee_alloc::WeeAlloc::INIT;

#[no_mangle]
pub fn execute_transaction() {
    let args = ext::args();
    
    let inc_by = args[0] as u8;
    let mut current_value = ext::get_storage(b"counter");
    if current_value.len() == 0 {
        current_value = vec![inc_by];
    } else {
        current_value[0] += inc_by;
    }

    ext::debug(&current_value);
    ext::set_storage(b"counter", &current_value);

    ext::return_data(Ok(&current_value))
}

#[no_mangle]
pub fn query_state() {
    
}
