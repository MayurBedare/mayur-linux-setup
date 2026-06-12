#!/usr/bin/env bash

set -e

echo "Installing packages..."

sudo pacman -S --needed - < packages/pacman.txt

echo "Done."
