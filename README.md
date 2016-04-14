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
or make rPod_Bp_defconfig (for B+)<br>
make<br>
follow instructions in the raspberry pi board readme to flash the zImage to an sd card<br>
or you can dd the sdimage file to the card, or use a windows utility to flash it<br>
the postgresql library is slowing down the boot right now. We need to<br>
figure out how to get it to do it's initial setup only once or before<br>
the image is made.

The pi is configured for DHCP.

Included Packages: <br>
I2C Slave Kernel Extension <br>
python <br>
cifs-utils <br>
teensy CLI loader <br>
rpi gpio library <br>
zeromq <br>
openSSH <br>
cpuload <br>
supervisor <br>
nano <br>
uemacs <br>
postgresql <br>
