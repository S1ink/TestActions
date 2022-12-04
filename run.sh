#!/bin/bash -eu

#cat /etc/apt/sources.list
#echo "deb http://deb.debian.org/debian testing main non-free contrib" > /etc/apt/sources.list
# echo "deb http://mirrors.xmission.com/debian/ testing main non-free contrib" > /etc/apt/sources.list
# echo "deb http://http.us.debian.org/debian testing main contrib non-free" > /etc/apt/sources.list
# echo "deb http://ftp.us.debian.org/debian testing main non-free contrib" > /etc/apt/sources.list

# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 648ACFD622F3D138
# sudo apt-get update
#sudo apt update
sudo apt-get install g++-11 -y

wget -nc -nv https://github.com/wpilibsuite/opensdk/releases/download/v2023-4/armhf-raspi-bullseye-2023-i686-linux-gnu-Toolchain-10.2.0.tgz
tar xzf armhf-raspi-bullseye-2023-i686-linux-gnu-Toolchain-10.2.0.tgz
./raspi-bullseye/bin/armv6-bullseye-linux-gnueabihf-g++ --version
./raspi-bullseye/bin/armv6-bullseye-linux-gnueabihf-g++ -v --help 2> /dev/null | sed -n '/^ *-std=\([^<][^ ]\+\).*/ {s//\1/p}'

# echo "****************************"
# arm-linux-gnueabihf-g++-10 --version
# which arm-linux-gnueabihf-g++-10
# ldd $(which arm-linux-gnueabihf-g++-10)
# arm-linux-gnueabihf-gcc-10 --version
# which arm-linux-gnueabihf-gcc-10
# ldd $(which arm-linux-gnueabihf-gcc-10)
# arm-linux-gnueabihf-ld --version
# arm-linux-gnueabihf-ar --version
# # pushd "/usr/bin"
# # ls -l
# # popd
# echo "****************************"

# sudo apt-get update
# sudo apt-get install python3-dev python3-numpy -y
# #echo $(sudo apt-get install libpython3.9-minimal libpython3.9-dev python3.9-minimal python3.9-dev python3-distutils)

# echo "****************************"
# pushd "/usr/include"
# ls -l -R
# popd
# echo "****************************"
# find /usr/include -name Python.h
# find / -iname python.h
# echo "****************************"

# sudo apt update
# sudo apt-get install wget

# wget -nc -nv https://github.com/wpilibsuite/opensdk/releases/download/v2023-4/armhf-raspi-bullseye-2023-i686-linux-gnu-Toolchain-10.2.0.tgz
# tar xzf ./armhf-raspi-bullseye-2023-i686-linux-gnu-Toolchain-10.2.0.tgz
# export PATH=/test-tmp/raspi-bullseye/bin:${PATH}
# #export PATH=/test-tmp/lib-deps:${PATH}

# echo $(LD_LIBRARY_PATH=/test-tmp/lib-deps ldd /test-tmp/raspi-bullseye/bin/armv6-bullseye-linux-gnueabihf-g++)
# echo $(LD_LIBRARY_PATH=/test-tmp/lib-deps armv6-bullseye-linux-gnueabihf-g++ --version)
# LD_LIBRARY_PATH=/test-tmp/lib-deps armv6-bullseye-linux-gnueabihf-g++ --version

# sudo touch /etc/ld.so.conf.d/cc-10.conf
# echo $(echo "/test-tmp/lib-deps" | sudo tee -a /etc/ld.so.conf.d/cc-10.conf)
# sudo ldconfig -v

# echo $(ldd /test-tmp/raspi-bullseye/bin/armv6-bullseye-linux-gnueabihf-g++)
# echo $(armv6-bullseye-linux-gnueabihf-g++ --version)
# ldd /test-tmp/raspi-bullseye/bin/armv6-bullseye-linux-gnueabihf-g++
# armv6-bullseye-linux-gnueabihf-g++ --version