#!/bin/sh

set -ex
BIN_DIR=/usr/local/bin/

cd /tmp

wget https://sonarcloud.io/static/cpp/build-wrapper-linux-x86.zip
unzip -qq -o build-wrapper-linux-x86.zip
cd build-wrapper-linux-x86/
chmod +x build-wrapper-linux-x86-64
cp build-wrapper-linux-x86-64 $BIN_DIR/sonar-build-wrapper
cp *.so $BIN_DIR/