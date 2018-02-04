extern crate exowasm_executor;

#[cfg(test)]
mod tests {
    // Include wasm_kernel.wasm. It's wasm binary which contains all tests.
    // See build.rs to see how it is built.
    const WASM_KERNEL: &'static [u8] =
        include_bytes!(concat!(env!("OUT_DIR"), "/wasm_kernel.wasm"));

    use std::collections::HashMap;
    use exowasm_executor::{execute, Storage};

    #[derive(Default)]
    struct MockStorage {
        data: HashMap<Vec<u8>, Vec<u8>>,
    }

    impl Storage for MockStorage {
        fn get(&self, key: &[u8]) -> Vec<u8> {
            self.data.get(key).cloned().unwrap_or(Vec::new())
        }

        fn set(&mut self, key: &[u8], value: &[u8]) {
            self.data.insert(key.to_vec(), value.to_vec());
        }
    }

    #[test]
    fn print_args() {
        let _ = execute(
            WASM_KERNEL,
            "test_print_args",
            b"ARGS",
            &mut MockStorage::default(),
        );
    }

    #[test]
    fn return_args() {
        let result = execute(
            WASM_KERNEL,
            "test_return_args",
            b"ARGS1",
            &mut MockStorage::default(),
        );
        assert_eq!(&result, b"ARGS1");
    }

    #[test]
    fn set_storage() {
        let mut storage = MockStorage::default();
        let _ = execute(WASM_KERNEL, "test_set_storage", b"some_key", &mut storage);
        assert_eq!(storage.get(b"some_key"), b"you found me!");
    }

    #[test]
    fn get_storage() {
        let mut storage = MockStorage::default();
        storage.set(b"key", b"value");

        let value = execute(WASM_KERNEL, "test_get_storage", b"key", &mut storage);

        assert_eq!(&value, b"value");
    }
}
