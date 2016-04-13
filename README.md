# eng-software-buildroot

This will contain the files necessary to assemble a buildroot image for the rPod.

Brief notes:
from a ubuntu clean install: <br>
sudo apt-get update <br>
sudo apt-get install ncurses-dev <br>
sudo apt-get install g++ <br>
sudo apt-get install git <br>

grab buildroot 2015.11 <br>
make rPod_defconfig <br>
make<br>
follow instructions in the raspberry pi board readme to flash the zImage to an sd card <br>
the postgresql library is slowing down the boot right now. We need to<br>
figure out how to get it to do it's initial setup only once or before<br>
the image is made.

samba and ssh are now working. The pi will have an ip assigned by DHCP and its
hostname is rPodPi.

Included Packages: <br>
I2C Slave Kernel Extension <br>
python <br>
cifs-utils <br>
teensy CLI loader <br>
rpi gpio library <br>
zeromq <br>
dropbear (ssh server) <br>
cpuload <br>
supervisor <br>
nano <br>
uemacs <br>
postgresql <br>
samba <br>
nfs<br>
