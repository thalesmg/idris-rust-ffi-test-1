# Example of Rust FFI code called from Idris

This is a very simple example of how to call Rust code from Idris. This simple example only uses integers.

# Building

You can simply run `./build.sh`, which will perform the following actions:

1. Compile the Rust code:

```bash
$ cargo build --release
```

2. Compile the Idris code passing appropriate flags to `gcc`:

```bash
$ idris src/Main.idr -o IMain --cg-opt -L./target/debug --cg-opt -ldl --cg-opt -lrt --cg-opt -lpthread --cg-opt -lgcc_s --cg-opt -lc --cg-opt -lm --cg-opt -lrt --cg-opt -lpthread --cg-opt -lutil --cg-opt -lffitest
```
