#! /bin/sh

echo "Booting qemu vexpress-ca9"

if [ -f "u-boot-sd" ];
then
	cp u-boot-sd u-boot -rfp
fi

sudo qemu-system-arm \
	-M sabrelite \
	-m 512M \
	-kernel ./u-boot \
	-nographic \
	-append console=ttyAMA0 \
	-sd rootfs.ext4 \
	-net nic \
	-net tap
#	-net nic,vlan=0	-net tap,vlan=0,ifname=tap0
#	-net nic \
#	-net tap,ifname=tap0,script=no
