#!/bin/bash -eu

sudo apt update
sudo apt-get install wget

wget -nc -nv https://github.com/wpilibsuite/opensdk/releases/download/v2023-4/armhf-raspi-bullseye-2023-i686-linux-gnu-Toolchain-10.2.0.tgz
tar xzf ./armhf-raspi-bullseye-2023-i686-linux-gnu-Toolchain-10.2.0.tgz
export PATH=/test-tmp/raspi-bullseye/bin:${PATH}
export PATH=/test-tmp/lib-deps:${PATH}

sudo touch /etc/ld.so.conf.d/cc-10.conf
echo "/test-tmp/lib-deps" | sudo tee -a /etc/ld.so.conf.d/cc-10.conf
sudo ldconfig -v | less

echo $(armv6-bullseye-linux-gnueabihf-g++ --version)
echo $(LD_LIBRARY_PATH=/test-tmp/lib-deps armv6-bullseye-linux-gnueabihf-g++ --version)