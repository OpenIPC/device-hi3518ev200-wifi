#!/bin/bash

PROJECT="OpenIPC_PayWall"
VERSION="v$(date '+%Y%m%d')"


create_hs303v1 () {
    #
    RESPECT="HS303V1"
    echo
    cp -a ${PROJECT}/autoconfig.$(echo ${RESPECT} | tr 'A-Z' 'a-z') ${PROJECT}/autoconfig
    tar cvfz ${PROJECT}_${RESPECT}_${VERSION}.tgz \
        ${PROJECT}/autoconfig \
        ${PROJECT}/autoconfig.sh \
        ${PROJECT}/autoupdate-kernel.img \
        ${PROJECT}/autoupdate-rootfs.img \
        ${PROJECT}/autoupdate-uboot.img \
        ${PROJECT}/u-boot
    rm -rf ${PROJECT}/autoconfig
}


create_hs303v2 () {
    #
    RESPECT="HS303V2"
    echo
    cp -a ${PROJECT}/autoconfig.$(echo ${RESPECT} | tr 'A-Z' 'a-z') ${PROJECT}/autoconfig
    tar cvfz ${PROJECT}_${RESPECT}_${VERSION}.tgz \
        ${PROJECT}/autoconfig \
        ${PROJECT}/autoconfig.sh \
        ${PROJECT}/autoupdate-kernel.img \
        ${PROJECT}/autoupdate-rootfs.img \
        ${PROJECT}/autoupdate-uboot.img \
        ${PROJECT}/u-boot
    rm -rf ${PROJECT}/autoconfig
}


create_hs303v3 () {
    #
    RESPECT="HS303V3"
    echo
    cp -a ${PROJECT}/autoconfig.$(echo ${RESPECT} | tr 'A-Z' 'a-z') ${PROJECT}/autoconfig
    tar cvfz ${PROJECT}_${RESPECT}_${VERSION}.tgz \
        ${PROJECT}/autoconfig \
        ${PROJECT}/autoconfig.sh \
        ${PROJECT}/autoupdate-kernel.img \
        ${PROJECT}/autoupdate-rootfs.img \
        ${PROJECT}/autoupdate-uboot.img \
        ${PROJECT}/u-boot
    rm -rf ${PROJECT}/autoconfig
}


create_cip37210 () {
    #
    RESPECT="CIP37210"
    echo
    cp -a ${PROJECT}/autoconfig.$(echo ${RESPECT} | tr 'A-Z' 'a-z') ${PROJECT}/autoconfig
    tar cvfz ${PROJECT}_${RESPECT}_${VERSION}.tgz \
        ${PROJECT}/apexis_factory.txt \
        ${PROJECT}/apexis_reserved.sh \
        ${PROJECT}/autoconfig \
        ${PROJECT}/autoconfig.sh \
        ${PROJECT}/autoupdate-kernel.img \
        ${PROJECT}/autoupdate-rootfs.img \
        ${PROJECT}/autoupdate-uboot.img \
        ${PROJECT}/migrator.bin
    rm -rf ${PROJECT}/autoconfig
}


create_cip37210zig () {
    #
    RESPECT="CIP37210ZIG"
    echo
    cp -a ${PROJECT}/autoconfig.$(echo ${RESPECT} | tr 'A-Z' 'a-z') ${PROJECT}/autoconfig
    tar cvfz ${PROJECT}_${RESPECT}_${VERSION}.tgz \
        ${PROJECT}/apexis_factory.txt \
        ${PROJECT}/apexis_reserved.sh \
        ${PROJECT}/autoconfig \
        ${PROJECT}/autoconfig.sh \
        ${PROJECT}/autoupdate-kernel.img \
        ${PROJECT}/autoupdate-rootfs.img \
        ${PROJECT}/autoupdate-uboot.img \
        ${PROJECT}/migrator.bin
    rm -rf ${PROJECT}/autoconfig
}


config_differ() {
    echo
    diff -ur ${PROJECT}/autoconfig.hs303v1/etc/majestic.yaml ${PROJECT}/autoconfig.hs303v2/etc/majestic.yaml
    diff -ur ${PROJECT}/autoconfig.hs303v1/etc/majestic.yaml ${PROJECT}/autoconfig.cip37210/etc/majestic.yaml
    diff -ur ${PROJECT}/autoconfig.hs303v1/etc/majestic.yaml ${PROJECT}/autoconfig.cip37210zig/etc/majestic.yaml
}


create_hs303v1
create_hs303v2
#create_hs303v3
create_cip37210
#create_cip37210zig
#config_differ
