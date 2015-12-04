#!/usr/bin/env bash

set -eu

for dir in $(find ./step* -type d); do
    echo "Building $dir"
    (cd $dir && ./build.sh)
done