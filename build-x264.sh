#!/bin/bash

cd x264/x264-0.155-20180923-545de2f
./configure --enable-shared --prefix=/usr/local --disable-asm
make -j 8 install install-lib-static install-lib-shared
if [ $? -ne 0 ]; then echo "x264 install error: $error" ; exit 1 ; fi
