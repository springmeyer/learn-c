#!/usr/bin/env bash

set -e

RETURN=0

RESULT=$(./run || RETURN=$?)

if [[ ${RESULT} != "hello world" ]]; then
    echo "Fail!"
else
    echo "Success!"
fi

exit ${RETURN}