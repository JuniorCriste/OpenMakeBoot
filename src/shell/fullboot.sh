umount /dev/sdb1 && mkfs.vfat -I /dev/sdb1 && dd if=/home/junior/bodhi.iso of=/dev/sdb1 status=progress && sync && umount /dev/sdb1

