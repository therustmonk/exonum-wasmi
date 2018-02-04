extern crate parity_wasm;

use std::env;
use std::path::PathBuf;
use std::process::Command;

use parity_wasm::elements::{deserialize_file, serialize_to_file, ExportEntry, Internal, Section};

fn main() {
    println!("rerun-if-changed=wasm-kernel/");

    Command::new("cargo")
        .arg("build")
        .arg("--release")
        .args(&["--target", "wasm32-unknown-unknown"])
        .current_dir("wasm-kernel")
        .output()
        .expect("failed to build wasm-kernel");

    let mut wasm_kernel_module = deserialize_file(
        "wasm-kernel/target/wasm32-unknown-unknown/release/wasm_kernel.wasm",
    ).expect("wasm_kernel.wasm not found, see build.rs");

    for section in wasm_kernel_module.sections_mut() {
        if let &mut Section::Export(ref mut section) = section {
            section
                .entries_mut()
                .push(ExportEntry::new("table".to_owned(), Internal::Table(0)));
        }
    }
    // TODO: generate export section if there is none.

    let out_dir = PathBuf::from(env::var("OUT_DIR").expect("OUT_DIR env variable isn't defined"));
    let mut result_wasm = out_dir;
    result_wasm.push("wasm_kernel.wasm");

    serialize_to_file(result_wasm, wasm_kernel_module).expect("Failed to serialize module");
}
