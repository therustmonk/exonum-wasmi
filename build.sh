#!/usr/bin/env bash

set -eux

cargo build --verbose
cargo build --verbose --manifest-path=exowasm-std/Cargo.toml
