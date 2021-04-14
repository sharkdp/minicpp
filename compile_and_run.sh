#!/bin/bash

CXX_STANDARD="c++14"
OPTIMIZATION_LEVEL="2"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

set -e

cd "$SCRIPT_DIR"

g++ \
    --std="$CXX_STANDARD" \
    -Wall \
    -Wextra \
    -pedantic \
    -fsanitize="address" \
    -fsanitize="signed-integer-overflow" \
    -g \
    -O"$OPTIMIZATION_LEVEL" \
    -I"dbg-macro" \
    -I"$SCRIPT_DIR/minicpp" \
    -DDBG_MACRO_NO_WARNING=1 \
    -o /tmp/minicpp_main \
    main.cpp

/tmp/minicpp_main

echo
