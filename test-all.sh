#!/usr/bin/env bash

set -u

failures=0

for dir in $(find ./step* -type d); do
    echo "Testing $dir"
    (cd $dir && ./test.sh)
    failures=$((failures+$?))
done

if [[ $failures > 0 ]]; then
    echo "Overall: Fail!"
else
    echo "Overall: Success!"
fi

exit $failures
