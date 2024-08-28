#!/bin/bash

clear

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

set -e

cd "$SCRIPT_DIR"

COMPILE_OPTIONS=($(sed -n -e 's@^//# @@p' main.cpp))

g++ \
    "${COMPILE_OPTIONS[@]}" \
    -I"dbg-macro" \
    -DDBG_MACRO_NO_WARNING=1 \
    -o /tmp/minicpp_main \
    main.cpp

/tmp/minicpp_main

echo
