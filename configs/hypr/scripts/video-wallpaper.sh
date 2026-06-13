#!/bin/bash

pkill mpvpaper

mpvpaper -f \
-o "--loop --no-audio --hwdec=vaapi" \
eDP-1 \
"$HOME/Videos/Wallpapers/floating-cat-best.mp4" &
