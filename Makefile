all:
	cargo clean
	cargo rustc --release --crate-type cdylib --target wasm32v1-none -p y --verbose -- --emit=obj -C lto=no
	wasm-objdump -x -j Code target/wasm32v1-none/release/deps/y.o | grep 'func.*<'
	wasm-objdump -x -j Code target/wasm32v1-none/release/y.wasm | grep 'func.*<'
