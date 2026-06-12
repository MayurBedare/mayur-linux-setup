#!/usr/bin/env bash

set -e

echo "==================================="
echo " Mayur Arch Workstation Bootstrap "
echo "==================================="

sudo pacman -Sy --needed git

if ! command -v yay >/dev/null 2>&1; then
    git clone https://aur.archlinux.org/yay-bin.git /tmp/yay-bin
    cd /tmp/yay-bin
    makepkg -si --noconfirm
fi

cd "$(dirname "$0")"

chmod +x install.sh

./install.sh
