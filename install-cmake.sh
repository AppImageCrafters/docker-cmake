#! /bin/bash

set -xe
source /entrypoint.sh

pushd /tmp
wget https://github.com/Kitware/CMake/releases/download/v${CMAKE_VERSION}/cmake-${CMAKE_VERSION}-Linux-x86_64.tar.gz -O- | tar xz

pushd cmake-*
cp -rf * /usr/local/
popd

{ # Test
  cmake --help
  cpack --help
  ctest --help
} &>/dev/null

rm -rf cmake-*
popd
