#!/usr/bin/env bash

set -eux

cargo test --verbose
cargo test --verbose --manifest-path=test/Cargo.toml
