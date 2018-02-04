#!/usr/bin/env bash

set -eux

cargo build --verbose

# Make sure exowasm-std library builts. Later we might want to just build 
# artifacts that depends on it, e.g. some example contract. However, we don't
# have any at the moment, so build this explicitly.
cargo build --verbose --manifest-path=exowasm-std/Cargo.toml
