TARGETDIR=$1
BR_ROOT=$PWD

mkdir $TARGETDIR/mnt/
mkdir $TARGETDIR/mnt/boot
mkdir $TARGETDIR/mnt/data

install -T -m 0644 $BR_ROOT/system/skeleton/etc/fstab $TARGETDIR/etc/fstab
echo '/dev/mmcblk0p1 /mnt/boot auto defaults 0 0' >> $TARGETDIR/etc/fstab
echo '/dev/mmcblk0p2 /mnt/data auto defaults 0 0' >> $TARGETDIR/etc/fstab
