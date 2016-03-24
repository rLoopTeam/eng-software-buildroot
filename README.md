# eng-software-buildroot

This will contain the files necessary to assemble a buildroot image for the rPod.

Brief notes:
from a ubuntu clean install:
sudo apt-get install ncurses-dev
sudo apt-get install g++
sudo apt-get install git

grab buildroot 2015.11
make raspberrypi2_defconfig
make menuconfig
enable compiler cache
build initramfs
don't tar system
python3
libzeromq
