umount /dev/sdb1 && mkfs.vfat -I /dev/sdbX && dd if=/home/${USUARIO}/linux.iso of=/dev/sdb1 status=progress && sync && umount /dev/sdbX;

