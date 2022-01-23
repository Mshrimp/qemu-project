#! /bin/sh



qemu-system-arm -M vexpress-a9 -m 512M -kernel ./zImage -dtb ./vexpress-v2p-ca9.dtb -nographic -append "root=/dev/mmcblk0 rw console=ttyAMA0" -sd rootfs.ext4
