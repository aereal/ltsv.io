#!/bin/sh

if [[ -n "$IO_PREFIX" ]]; then
  IO_PREFIX=/tmp/io
fi

git clone git://github.com/stevedekorte/io.git
cd io/
mkdir -p build/
cd build/
cmake -DCMAKE_BUILD_TYPE=release -DCMAKE_INSTALL_PREFIX=$IO_PREFIX ..
make
make install
popd
