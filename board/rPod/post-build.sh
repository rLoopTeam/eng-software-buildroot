TARGETDIR=$1
BR_ROOT=$PWD

install -T -m 0644 $BR_ROOT/system/skeleton/etc/fstab $TARGETDIR/etc/fstab
echo '/dev/mmcblk0p1 /media/boot auto defaults 0 0' >> $TARGETDIR/etc/fstab
echo '/dev/mmcblk0p2 /media/data auto defaults 0 0' >> $TARGETDIR/etc/fstab
