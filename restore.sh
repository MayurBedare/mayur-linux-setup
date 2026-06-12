#!/usr/bin/env bash

set -e

echo "Restoring configs..."

mkdir -p ~/.config

cp -r configs/hypr ~/.config/
cp -r configs/hyde ~/.config/
cp -r configs/waybar ~/.config/
cp -r configs/kitty ~/.config/
cp -r configs/rofi ~/.config/
cp -r configs/fastfetch ~/.config/

cp configs/zsh/.zshrc ~/

echo "Restore complete."
