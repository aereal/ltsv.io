#!/bin/sh

if [[ -n "$IO_PREFIX" ]]; then
  IO_PREFIX=/tmp/io
fi
IO_BIN=$IO_PREFIX/bin/io
$IO_BIN test/ltsv.io
