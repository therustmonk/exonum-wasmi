# Exonum + Wasmi

To build the project use:

```
cargo build --all
```

When the project is build all necessary binaries placed to `./target/debug` directory.


To run the node use:

```
exowasm-node
```


To deploy the test kernel:

```
exowasm-client deploy cryptocurrency cryptocurrency/cryptocurrency.wasm
```

To call simple test you can run the following command

```
exowasm-client call cryptocurrency create_wallet
```

If you need to pass arguments to wasm you can pass it in HEX like:

```
exowasm-client call cryptocurrency create_wallet 4045
```
