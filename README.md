# TX1FTDIModule
November 25,2015
This repository contains scripts used to compile the FTDI module for the NVIDIA Jetson TX1 Development Kit.

The current version is for L4T 23.1

WARNING - THIS IS ALL VERY EXPERIMENTAL AND WILL MESS UP YOUR SYSTEM IF YOU CHOOSE TO BUILD THE MODULE YOURSELF. THERE IS A SCRIPT WHICH JUST INSTALLS THE COMPILED FTDI MODULE BY ITSELF WITHOUT COMPILATION WHICH IS THE RECOMMENDED INSTALLATION METHOD AT THIS TIME.

To install the FTDI module:

$ ./installFTDIModule.sh

To compile the driver:

The Jetson TX1 requires aarch64 for working with the kernel. However this is not enabled on the Jetson TX1. To install the 64 bit extensions, execute:

$ sudo ./installGCC.sh

As of this writing, this is almost guaranteed to muck up your system but will allow you to compile modules for the kernel modules. If you take this route, you should plan on reflashing your TX1 immediately thereafter, but first save the newly built modules.

To build and install the FTDI module:

$ sudo ./prepareModule.sh

The script prepareModule.sh builds the FTDI module by downloading the kernel sources, unpacking them, and modifying the .config file to indicate that the FTDI module should be compiled, along with setting the local version release of the kernel. The module is then compiled copied to the appropriate system /lib/module directory. Please modify and use this script for your own purposes, as the intent is to work after a fresh install of the operating system. If you have been building other modules, or have a modified kernel (such as the Grinch kernel), you will need to modify the script for your own use.

The script removeSources.sh removes the kernel sources that the prepareModule script downloaded. This is useful in the case where only the FTDI module needs to be built, and the sources are no longer needed. For most applications this is not necessary, but is useful when space is at a premium.
