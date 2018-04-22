#!/bin/bash

export CROSS=arm-linux-gnueabihf
export AR=${CROSS}-ar
export AS=${CROSS}-as
export CC=${CROSS}-gcc
export CXX=${CROSS}-g++
export LD=${CROSS}-ld

./Configure --prefix=/usr/${CROSS} os/compiler:${CC}
make
sudo make install
