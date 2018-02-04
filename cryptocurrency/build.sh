#!/usr/bin/env bash

set -eux

cd $(dirname $0)

# We need --release since debug version at the moment doesn't work properly.
RUSTFLAGS="-g" cargo build --release --target wasm32-unknown-unknown


cp \
    target/wasm32-unknown-unknown/release/cryptocurrency.wasm \
    ./cryptocurrency.wasm

# Disassemble wasm to wasm text format for inspection.

command -v wasm2wat || ( echo "wasm2wat isn't installed (not fatal)"; exit 1 )

wasm2wat \
    -f \
    -o ./cryptocurrency.wat \
    ./cryptocurrency.wasm

cd -
