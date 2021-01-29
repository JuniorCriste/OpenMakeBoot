umount /dev/sdb1 && mkfs.vfat /dev/sdb1 && dd if=bodhi.iso of=/dev/sdb1 status=progress && sync && umount /dev/sdb1

