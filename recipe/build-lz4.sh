#!/bin/bash

mkdir -p build
cd build

cmake \
  .. \
  -DENABLE_BITSHUFFLE_PLUGIN=no \
  -DENABLE_LZ4_PLUGIN=yes \
  -DENABLE_BZIP2_PLUGIN=no \
  -DCMAKE_INSTALL_LIBDIR=lib \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
&& make install
