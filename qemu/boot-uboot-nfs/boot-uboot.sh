#! /bin/sh

#echo "Booting qemu vexpress-ca9"

qemu-system-arm \
	-M vexpress-a9 \
	-m 512M \
	-kernel ./u-boot \
	-nographic \
	-append console=ttyAMA0
