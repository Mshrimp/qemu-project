#! /bin/sh

echo "Booting qemu vexpress-ca9"

sudo qemu-system-arm \
	-M vexpress-a9 \
	-m 512M \
	-kernel ./u-boot \
	-nographic \
	-append console=ttyAMA0 \
	-sd rootfs.ext3 \
	-net nic \
	-net tap
#	-net nic,vlan=0	-net tap,vlan=0,ifname=tap0
#	-net nic \
#	-net tap,ifname=tap0,script=no
