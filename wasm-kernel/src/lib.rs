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
pub fn query_state() {    
}
