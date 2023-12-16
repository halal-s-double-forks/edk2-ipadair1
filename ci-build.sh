#!/bin/bash
set -e
sudo apt update
sudo apt install -y build-essential uuid-dev iasl git nasm gcc-aarch64-linux-gnu bc mkbootimg
curdir="$PWD"
cd ..
git clone https://github.com/tianocore/edk2 --recursive -b edk2-stable202302 --depth=1
git clone https://github.com/tianocore/edk2-platforms.git --depth=1
cd "$curdir"
./firstrun.sh
./build.sh
