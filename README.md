# eng-software-buildroot

This will contain the files necessary to assemble a buildroot image for the rPod.

Brief notes:
from a ubuntu clean install: <br>
sudo apt-get install ncurses-dev <br>
sudo apt-get install g++ <br>
sudo apt-get install git <br>

grab buildroot 2015.11 <br>
make raspberrypi2_defconfig <br>
make menuconfig <br>
enable compiler cache <br>
build initramfs <br>
don't tar system <br>
python3 <br>
libzeromq <br>
