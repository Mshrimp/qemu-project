#!/bin/sh

mount -t nfs -o nolock 192.168.1.104:/home/xiami/qemu/nfs_root /mnt
cd /mnt/mcy
ls
