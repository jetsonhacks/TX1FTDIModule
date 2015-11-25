#!/bin/sh
# Prepare to build the FTDI module for LT4 21.4 on the NVIDIA Jetson TK1
if [ $(id -u) != 0 ]; then
   echo "This script requires root permissions"
   echo "$ sudo "$0""
   exit
fi
# Get the kernel source for LT4 21.4
cd /usr/src/
wget http://developer.download.nvidia.com/embedded/L4T/r23_Release_v1.0/source/kernel_src.tbz2
# Decompress
tar -xvf kernel_src.tbz2
cd kernel
# Get the kernel configuration file
zcat /proc/config.gz > .config

