#!/bin/sh
#
# Deleting already flashed files
#
cd /mnt/mmcblk0p1
rm -rf autoupdate-kernel.img autoupdate-rootfs.img autoupdate-uboot.img migrator.bin u-boot
#
#
# Cleaning of the settings partition
#
flash_eraseall -j /dev/mtd4
#
#
# Signaling that the device requires action on the SD card
#
for PIN in $(yaml-cli -i /mnt/mmcblk0p1/autoconfig/etc/majestic.yaml -g .nightMode.irCutPin1); do
    echo ${PIN} > /sys/class/gpio/export
    echo out > /sys/class/gpio/gpio${PIN}/direction
    echo 0 > /sys/class/gpio/gpio${PIN}/value
done
#
while true ; do echo 1 > /sys/class/gpio/gpio${PIN}/value; sleep 1; echo 0 > /sys/class/gpio/gpio${PIN}/value; sleep 1; done &
#
#
