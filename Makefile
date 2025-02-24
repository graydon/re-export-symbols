all:
	cargo clean
	cargo rustc --release --crate-type cdylib --target wasm32v1-none -p y --verbose -- -C link-args="-s "
	wasm-objdump -hx target/wasm32v1-none/release/y.wasm
