#!/bin/bash -eu

sudo apt update
sudo apt-get install wget

wget -nc -nv https://github.com/wpilibsuite/opensdk/releases/download/v2023-4/armhf-raspi-bullseye-2023-i686-linux-gnu-Toolchain-10.2.0.tgz
tar xzf ./armhf-raspi-bullseye-2023-i686-linux-gnu-Toolchain-10.2.0.tgz
export PATH=/test-tmp/raspi-bullseye/bin:${PATH}

echo $(armv6-bullseye-linux-gnueabihf-g++ --version)