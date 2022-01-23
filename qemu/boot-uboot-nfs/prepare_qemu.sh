#! /bin/sh

UBOOT=~/tool/u-boot-2020.01/u-boot
#UIMAGE_FILE=../../tool/linux-4.14.172/object/arch/arm/boot/uImage
#DTB_FILE=../../tool/linux-4.14.172/object/arch/arm/boot/dts/vexpress-v2p-ca9.dtb
#UIMAGE_FILE=../../tool/linux-4.9.115/object/arch/arm/boot/uImage
#DTB_FILE=../../tool/linux-4.9.115/object/arch/arm/boot/dts/vexpress-v2p-ca9.dtb
UIMAGE_FILE=../../tool/linux-4.9.115/arch/arm/boot/uImage
DTB_FILE=../../tool/linux-4.9.115/arch/arm/boot/dts/vexpress-v2p-ca9.dtb

if [ -f $UBOOT ];
then
	cp $UBOOT . -rfpd
	chmod a+x u-boot;
else
	echo "No found file: $UBOOT"
fi

if [ -f $UIMAGE_FILE ];
then
	cp $UIMAGE_FILE . -rfpd
	chmod a+x uImage;
else
	echo "No found file: $UIMAGE_FILE"
fi

if [ -f $DTB_FILE ];
then
	cp $DTB_FILE . -rfpd
	chmod a+x *.dtb
else
	echo "No found file: $DTB_FILE"
fi


#./boot.sh


