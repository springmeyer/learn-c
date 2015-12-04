#!/usr/bin/env bash

set -eu

# compile run.o "object file"
# need includes (aka headers) to be found
# <include boost....>
clang -c run.c

# link in another step
# need dependent libraries to be found
# libboost_test.so 
clang -o run run.o
