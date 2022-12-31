#!/bin/bash -e

echo "Updating firmware to cb852c1fa666"

on_chroot << EOF
SKIP_WARNING=1 rpi-update cb852c1fa666

rm -rf /var/lib/apt/lists/*
EOF
