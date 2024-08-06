#!/bin/bash
# wget "https://mirror.koddos.net/gcc/releases/gcc-9.5.0/gcc-9.5.0.tar.gz"
# tar -zxvf gcc-9.5.0.tar.gz
# cp download_prerequisites.hack gcc-9.5.0/contrib/
clear
source env.sh

#
cd $GCC_VERSION
./contrib/download_prerequisites.hack
./contrib/download_prerequisites

mkdir -p build && rm -rf build/*
cd build
../configure \
    --prefix=$GCC_HOME \
    --enable-checking=release \
    --enable-languages=c,c++,fortran,go \
    --enable-threads=posix \
    --disable-multilib

make -j 16
make install
