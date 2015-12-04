#!/usr/bin/env bash

set -eu

# compile run.o "object file"
# need includes (aka headers) to be found
clang -c run.c

# link into executable in second step
clang -o run run.o
