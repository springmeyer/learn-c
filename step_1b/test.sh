#!/usr/bin/env bash

set -eu

RESULT=$(./run)

if [[ ${RESULT} != "hello world" ]]; then
    echo "Fail!"
    exit 1
else
    echo "Success!"
    exit 0
fi