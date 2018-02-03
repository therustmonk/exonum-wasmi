
use alloc::Vec;
use core::ptr;

enum Void {
}

mod ffi {
    use super::Void;

    extern "C" {
        pub fn debug(msg_ptr: *const u8, msg_len: usize);

        pub fn args(ptr: *mut u8);
        pub fn args_len() -> usize;

        pub fn return_data(
            value_ptr: *const u8,
            value_len: usize,
        );

        pub fn set_storage(
            key_ptr: *const u8,
            key_len: usize,
            value_ptr: *const u8,
            value_len: usize,
        );

        pub fn get_storage(
            key_ptr: *const u8,
            key_len: usize,
            cb: extern "C" fn(*mut Void, usize) -> *mut u8,
            cb_data: *mut Void,
        );
    }
}

#[inline(always)]
unsafe fn wrap_closure<F>(f: &F) -> (extern "C" fn(*mut Void, usize) -> *mut u8, *mut Void)
where
    F: FnOnce(usize) -> *mut u8,
{
    extern "C" fn wrapper<F>(closure_ptr: *mut Void, size: usize) -> *mut u8
    where
        F: FnOnce(usize) -> *mut u8,
    {
        let opt_closure = closure_ptr as *mut Option<F>;
        unsafe { (*opt_closure).take().unwrap()(size) }
    }

    let closure_data = f as *const _ as *mut Void;
    (wrapper::<F>, closure_data)
}

fn reserve_vec_space(vec: &mut Vec<u8>, size: usize) -> *mut u8 {
    *vec = Vec::with_capacity(size);
    unsafe {
        vec.set_len(size);
    }
    vec.as_mut_ptr()
}

/// Print debug message to the console.
pub fn debug(msg: &[u8]) {
    unsafe {
        ffi::debug(
            msg.as_ptr(),
            msg.len()
        );
    }
}

/// Return arguments for current request.
pub fn args() -> Vec<u8> {
    unsafe {
        let args_len = ffi::args_len();
        let mut args = vec![0u8; args_len];
        ffi::args(args.as_mut_ptr());
        args
    }
}

/// Return data of the execution.
pub fn return_data(value: &[u8]) {
    unsafe {
        ffi::return_data(value.as_ptr(), value.len());
    }
}

/// Load value from key-value storage.
pub fn get_storage(key: &[u8]) -> Vec<u8> {
    let mut value = Vec::new();
    {
        let reserve_space = |size: usize| {
            reserve_vec_space(&mut value, size)
        };
        unsafe {
            let (cb, cb_data) = wrap_closure(&reserve_space);
            ffi::get_storage(key.as_ptr(), key.len(), cb, cb_data);
        }
    }
    value
}

/// Storage value to key-value storage.
pub fn set_storage(key: &[u8], value: &[u8]) {
   unsafe {
       ffi::set_storage(
           key.as_ptr(),
           key.len(),
           value.as_ptr(),
           value.len(),
       );
   }
}


