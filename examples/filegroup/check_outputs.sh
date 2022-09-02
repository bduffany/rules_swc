#!/usr/bin/env bash
set -o errexit

cd "$TEST_SRCDIR/$TEST_WORKSPACE/$(dirname $TEST_TARGET)"
grep "export var a" filegroup/a.js
# FIXME: is there a way to get swc to include this line?
#grep "sourceMappingURL=a.js.map" filegroup/a.js
grep --fixed-strings '"sources":["examples/filegroup/a.ts"]' filegroup/a.js.map