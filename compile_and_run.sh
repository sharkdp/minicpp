#!/bin/bash

CXX_STANDARD="c++17"
OPTIMIZATION_LEVEL="2"

set -e

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
    -DDBG_MACRO_NO_WARNING=1 \
    -o /tmp/minicpp_main \
    main.cpp

/tmp/minicpp_main

echo
