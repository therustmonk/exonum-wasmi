#!/usr/bin/env bash

set -eux

cargo build --verbose

# Build cryptocurrency example. This will build exowasm-std transitively.
./cryptocurrency/build.sh
