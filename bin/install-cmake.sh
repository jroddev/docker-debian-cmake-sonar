#!/bin/sh

set -ex

export OPENSSL_ROOT_DIR=$(which openssl)

cd /tmp
wget https://github.com/Kitware/CMake/releases/download/v3.18.2/cmake-3.18.2.tar.gz
tar -zxvf cmake-3.18.2.tar.gz
cd cmake-3.18.2
./bootstrap
make install
