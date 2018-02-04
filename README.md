# Exonum + Wasmi

To run the node use:

```
cargo run --bin node
```

To deploy the test kernel:

```
cargo run --bin client -- deploy wasm_kernel wasm-kernel/wasm_kernel.wasm
```

To call simple test you can run the following command

```
cargo run --bin client -- call wasm_kernel test_counter
```

If you need to pass arguments to wasm you can pass it in HEX like:

```
cargo run --bin client -- call wasm_kernel test_return_args 4045
```
