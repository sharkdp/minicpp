#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

set -e

cd "$SCRIPT_DIR"

COMPILE_OPTIONS=($(sed -n -e 's@^//# @@p' main.cpp))

g++ \
    "${COMPILE_OPTIONS[@]}" \
    -I"dbg-macro" \
    -DDBG_MACRO_NO_WARNING=1 \
    -S \
    -fverbose-asm \
    -o /tmp/minicpp_out.s \
    main.cpp

bat -lasm /tmp/minicpp_out.s

echo
