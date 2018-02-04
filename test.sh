#!/usr/bin/env bash

set -eux

cargo test --verbose

# Execute wasm tests.
cargo test --verbose --manifest-path=exowasm-executor-test/Cargo.toml
