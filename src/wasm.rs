use wasmi::{Error, Externals, FuncInstance, FuncRef, ImportsBuilder, MemoryRef, Module,
            ModuleImportResolver, ModuleInstance, RuntimeArgs, RuntimeValue, Signature, Trap,
            ValueType};

const DEBUG_FUNC: usize = 0;
const ARGS_FUNC: usize = 1;
const RETURN_DATA_FUNC: usize = 2;
const SET_STORAGE_FUNC: usize = 3;
const GET_STORAGE_FUNC: usize = 4;

struct Runtime {
    memory: MemoryRef,
}

impl Externals for Runtime {
    fn invoke_index(
        &mut self,
        index: usize,
        args: RuntimeArgs,
    ) -> Result<Option<RuntimeValue>, Trap> {
        match index {
            DEBUG_FUNC => {
                let ptr: u32 = args.nth(0);
                let len: u32 = args.nth(1);

                let mut msg_buf = vec![0u8; len as usize];
                self.memory.get_into(ptr, &mut msg_buf).expect("Failed to copy msg");

                let msg = String::from_utf8_lossy(&msg_buf);
                println!("[wasm]: {}", msg);

                Ok(None)
            },
            _ => {
                // TODO: Implement all the stuff/
                Ok(None)
            }
        }
    }
}

struct RuntimeImportResolver;
impl RuntimeImportResolver {
    fn check_signature(index: usize, signature: &Signature) -> bool {
        use self::ValueType::*;

        let (params, ret_ty): (&[ValueType], Option<ValueType>) = match index {
            DEBUG_FUNC => (&[I32, I32], None),
            ARGS_FUNC => (&[I32, I32], None),
            RETURN_DATA_FUNC => (&[I32, I32, I32], None),
            SET_STORAGE_FUNC => (&[I32, I32, I32, I32], None),
            GET_STORAGE_FUNC => (&[I32, I32, I32, I32], None),
            _ => return false,
        };

        signature.params() == params && signature.return_type() == ret_ty
    }
}

impl ModuleImportResolver for RuntimeImportResolver {
    fn resolve_func(&self, field_name: &str, signature: &Signature) -> Result<FuncRef, Error> {
        let index = match field_name {
            "debug" => DEBUG_FUNC,
            "args" => ARGS_FUNC,
            "return_data" => RETURN_DATA_FUNC,
            "set_storage" => SET_STORAGE_FUNC,
            "get_storage" => GET_STORAGE_FUNC,
            _ => {
                return Err(Error::Instantiation(format!(
                    "Export {} not found",
                    field_name
                )));
            }
        };

        if !RuntimeImportResolver::check_signature(index, signature) {
            return Err(Error::Instantiation(format!(
                "Signature mismatch for function {}",
                field_name
            )));
        }

        Ok(FuncInstance::alloc_host(signature.clone(), index))
    }
}

pub fn execute_wasm(wasm: &[u8], params: &[u8]) -> Vec<u8> {
    let module = Module::from_buffer(wasm).expect("Can't load wasm");
    let instance = ModuleInstance::new(
        &module,
        &ImportsBuilder::new().with_resolver("env", &RuntimeImportResolver),
    ).expect("Can't instantiate wasm");
    let memory = instance
        .not_started_instance()
        .export_by_name("memory")
        .expect("export 'memory' not found")
        .as_memory()
        .expect("export 'memory' is not a memory")
        .clone();

    let mut runtime = Runtime { memory };

    let instance = instance
        .run_start(&mut runtime)
        .expect("Failed to run `start` function");
    let result = instance
        .invoke_export("execute_transaction", &[], &mut runtime)
        .unwrap();

    // TODO: fetch the return data.

    Vec::new()
}

#[cfg(test)]
mod tests {
    use std::path::Path;
    use std::io;
    use std::fs::File;
    use super::execute_wasm;

    fn read_file<P: AsRef<Path>>(path: P) -> io::Result<Vec<u8>> {
        use std::io::Read;

        let mut rom_file = File::open(path)?;
        let mut rom_buffer = Vec::new();
        rom_file.read_to_end(&mut rom_buffer)?;
        Ok(rom_buffer)
    }

    #[test]
    fn it_works() {
        let wasm_kernel_buf =
            read_file("wasm-kernel/wasm_kernel.wasm").expect("Failed to load wasm-kernel");
        let result = execute_wasm(&wasm_kernel_buf, &[]);
    }
}
