#!/usr/bin/env bash

set -eu

rm -f ./*/run
find ./ -name "*.os" -exec rm {} \;
find ./ -name "*.dylib" -exec rm {} \;
find ./ -name "*.so" -exec rm {} \;
find ./ -name "*.o" -exec rm {} \;
find ./ -name "*.a" -exec rm {} \;