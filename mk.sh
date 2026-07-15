#!/bin/sh

target=i686-pc-os2-emx

make CC=$target-gcc CXX=$target-g++ AR=$target-ar "$@"
