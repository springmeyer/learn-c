#!/usr/bin/env bash

set -eu

# compile run.o "object file"
# need includes (aka headers) to be found
clang -c run.c

# link into executable in second step
clang -o run run.o

: '

NOTE: for fast iteration you might want to avoid using a bash wrapper and just
have a command that could go on one line and be re-run.

To do that you could compile, link, and run the program in one line like:


   clang -o run run.c && ./run

'
