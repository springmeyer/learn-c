#!/usr/bin/env bash

set -eu

for dir in $(find ./step* -type d); do
    echo "Testing $dir"
    (cd $dir && ./build.sh)
done