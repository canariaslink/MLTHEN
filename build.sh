#!/bin/bash

set -e

pushd kpayload
make
popd

pushd installer
make
popd

rm -f "mlthen 1.0 beta.bin"
cp installer/installer.bin "mlthen 1.0 beta.bin"
