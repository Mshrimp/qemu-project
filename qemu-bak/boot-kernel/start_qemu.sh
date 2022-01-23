#! /bin/sh

ZIMAGE_FILE=../../tool/linux-4.14.172/object/arch/arm/boot/zImage
DTB_FILE=../../tool/linux-4.14.172/object/arch/arm/boot/dts/vexpress-v2p-ca9.dtb

if [ -f $ZIMAGE_FILE ];
then
	cp $ZIMAGE_FILE . -rf
	chmod a+x zImage;
else
	echo "No found file: $ZIMAGE_FILE"
fi
if [ -f $DTB_FILE ];
then
	cp $DTB_FILE . -rf
	chmod a+x *.dtb
else
	echo "No found file: $DTB_FILE"
fi


#./boot.sh


