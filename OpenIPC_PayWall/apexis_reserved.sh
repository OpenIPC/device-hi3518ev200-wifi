#!/bin/sh
#
#
# Creating a SPI NOR flash backup
#
dd if=/dev/mtd3 of=/mnt/sd/fullflash-cip37210.dump
#
#
# Installing the bootloader
#
flashcp -v /mnt/sd/migrator.bin /dev/mtd0 && reboot
#
