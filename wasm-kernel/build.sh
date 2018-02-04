#!/usr/bin/env bash

set -eux

cd $(dirname $0)

# We need --release since debug version at the moment doesn't work properly.
RUSTFLAGS="-g" cargo build --release --target wasm32-unknown-unknown

command -v wasm2wat || ( echo "wasm2wat isn't installed"; exit 1 )
command -v wat2wasm || ( echo "wat2wasm isn't installed"; exit 1 )


cp \
    target/wasm32-unknown-unknown/release/wasm_kernel.wasm \
    ./wasm_kernel.wasm
wasm2wat \
    -f \
    -o ./wasm_kernel.wat \
    ./wasm_kernel.wasm

cd -
