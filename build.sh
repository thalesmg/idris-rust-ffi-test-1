#!/bin/bash

cargo build --release

idris src/Main.idr -o IMain --cg-opt -L./target/debug --cg-opt -ldl --cg-opt -lrt --cg-opt -lpthread --cg-opt -lgcc_s --cg-opt -lc --cg-opt -lm --cg-opt -lrt --cg-opt -lpthread --cg-opt -lutil --cg-opt -lffitest
