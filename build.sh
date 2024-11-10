#!/bin/bash

yum install -y curl wget git vim make pcre pcre-devel gawk unzip python python3 python3-devel boost-devel

BASE_DIR=$PWD
CMAKE_VERSION=3.22.0

pushd build_tools
echo 'install cmake 3.22.0'
chmod +x cmake-3.22.0-linux-x86_64.sh build_install_llvm.sh
./cmake-3.22.0-linux-x86_64.sh --skip-license --prefix="/usr/local"
./build_install_llvm.sh

popd # go to aflgo

