#!/bin/bash -e

apt update
apt install -y wget xz-utils bzip2 make autoconf gcc-multilib g++-multilib

# Download GCC sources.
wget https://ftp.wrz.de/pub/gnu/gcc/gcc-10.2.0/gcc-10.2.0.tar.xz
tar xf gcc-10.2.0.tar.xz
cd gcc-10.2.0
wget https://gmplib.org/download/gmp/gmp-6.2.0.tar.xz
tar xf gmp-6.2.0.tar.xz
mv gmp-6.2.0 gmp
wget https://ftp.gnu.org/gnu/mpfr/mpfr-4.1.0.tar.gz
tar xf mpfr-4.1.0.tar.gz
mv mpfr-4.1.0 mpfr
wget ftp://ftp.gnu.org/gnu/mpc/mpc-1.2.1.tar.gz
tar xf mpc-1.2.1.tar.gz
mv mpc-1.2.1 mpc
wget ftp://gcc.gnu.org/pub/gcc/infrastructure/isl-0.18.tar.bz2
tar xf isl-0.18.tar.bz2
mv isl-0.18 isl

NCPU=`grep -c 'cpu[0-9]' /proc/stat`

./configure --prefix=/opt/gcc-10 --enable-languages=c,c++
make -j${NCPU}
make install

cd /opt/gcc-10
ls -l -R
cd ../../

wget -nc -nv https://github.com/wpilibsuite/opensdk/releases/download/v2023-4/armhf-raspi-bullseye-2023-i686-linux-gnu-Toolchain-10.2.0.tgz
tar xzf armhf-raspi-bullseye-2023-i686-linux-gnu-Toolchain-10.2.0.tgz
./raspi-bullseye/bin/armv6-bullseye-linux-gnueabihf-g++ --version