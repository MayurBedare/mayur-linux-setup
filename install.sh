#!/usr/bin/env bash

set -e

echo "Updating system..."
sudo pacman -Syu --noconfirm

echo "Installing pacman packages..."
sudo pacman -S --needed --noconfirm $(cat packages/pacman.txt)

echo "Installing AUR packages..."
yay -S --needed --noconfirm $(cat packages/aur.txt)

echo "Installing Flatpak packages..."
while read -r app; do
    flatpak install -y flathub "$app"
done < packages/flatpak.txt

echo "Installation complete."
