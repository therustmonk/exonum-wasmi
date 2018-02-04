set -ex

hide_output() {
  set +x
  on_err="
echo ERROR: An error was encountered with the build.
cat /tmp/build.log
exit 1
"
  trap "$on_err" ERR
  bash -c "while true; do sleep 30; echo \$(date) - building ...; done" &
  PING_LOOP_PID=$!
  $@ &> /tmp/build.log
  trap - ERR
  kill $PING_LOOP_PID
  rm -f /tmp/build.log
  set -x
}

# Download last known good emscripten from WebAssembly waterfall
BUILD=$(curl -fL https://storage.googleapis.com/wasm-llvm/builds/linux/lkgr.json | \
    jq '.build | tonumber')
curl -sL https://storage.googleapis.com/wasm-llvm/builds/linux/$BUILD/wasm-binaries.tbz2 | \
    hide_output tar xvkj

export PATH=$PATH:/wasm-install/bin
