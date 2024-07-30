#/bin/bash
clear
source ../config.sh
VERSION=gcc-11.3.0

#
cd $VERSION
./contrib/download_prerequisites

mkdir -p build && rm -rf build/*
cd build
../configure \
    --prefix=$GCC_HOME \
    --enable-checking=release \
    --enable-languages=c,c++,fortran,go \
    --enable-threads=posix \
    --disable-multilib

make -j 8
make install
