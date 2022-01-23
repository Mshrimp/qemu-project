#! /bin/sh

UBOOT=../../tool/u-boot-2020.01/object/u-boot
UIMAGE_FILE=../../tool/linux-4.14.172/object/arch/arm/boot/uImage
DTB_FILE=../../tool/linux-4.14.172/object/arch/arm/boot/dts/vexpress-v2p-ca9.dtb

if [ -f $UBOOT ];
then
	cp $UBOOT . -rfp
	chmod a+x u-boot;
else
	echo "No found file: $UBOOT"
fi

if [ -f $UIMAGE_FILE ];
then
	cp $UIMAGE_FILE . -rfp
	chmod a+x uImage;
else
	echo "No found file: $UIMAGE_FILE"
fi

if [ -f $DTB_FILE ];
then
	cp $DTB_FILE . -rfp
	chmod a+x *.dtb
else
	echo "No found file: $DTB_FILE"
fi


#./boot.sh


