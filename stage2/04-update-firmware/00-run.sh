#!/bin/bash -e

echo "Updating firmware to cb852c1fa666"

on_chroot << EOF
rpi-update cb852c1fa666
EOF
