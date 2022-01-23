#! /bin/sh

ZIMAGE_FILE=../tool/linux-4.14.172/object/arch/arm/boot/zImage
DTB_FILE=../tool/linux-4.14.172/object/arch/arm/boot/dts/vexpress-v2p-ca9.dtb

if [ -f $ZIMAGE_FILE ];
then
	cp ../tool/linux-4.14.172/object/arch/arm/boot/zImage . -rf
	chmod a+x zImage;
fi
if [ -f $DTB_FILE ];
then
	cp ../tool/linux-4.14.172/object/arch/arm/boot/dts/vexpress-v2p-ca9.dtb . -rf
	chmod a+x *.dtb
fi


./boot.sh


