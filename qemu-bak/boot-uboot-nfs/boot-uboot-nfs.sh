#! /bin/sh

echo "Booting qemu vexpress-ca9"

if [ -f "u-boot-nfs" ];
then
	cp u-boot-nfs u-boot -rfp
fi

sudo qemu-system-arm \
	-M vexpress-a9 \
	-m 512M \
	-kernel ./u-boot \
	-nographic \
	-append console=ttyAMA0 \
	-net nic \
	-net tap \
	-sd rootfs.ext4
#	-net nic,vlan=0	-net tap,vlan=0,ifname=tap0
#	-net nic \
#	-net tap,ifname=tap0,script=no
