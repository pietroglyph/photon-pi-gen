#!/bin/bash -e

echo "Updating firmware to cb852c1fa666"

on_chroot << EOF
SKIP_WARNING=1 PRUNE_MODULES=1 rpi-update cb852c1fa666

apt purge -y 'x11-*'
rm /boot/start_db.elf /boot/start4db.elf /boot/start4x.elf /boot/start4cd.elf /boot/start_cd.elf
rm /boot/kernel7.img /boot/kernel7l.img /boot/kernel.img
rm -rf /opt/vc
rm -rf /boot.bak

apt-get purge -y python3 gdb gcc g++ default-jdk
apt-get autoremove -y
apt-get install -y openjdk-11-jre

rm -rf /var/lib/apt/lists/*
apt-get clean
rm -rf /usr/share/doc
rm -rf /usr/share/locale/

EOF
