#!/bin/sh
swww img $1 --transition-type center --transition-duration 0.5 --transition-fps 30
unlink /tmp/current_wallpaper
ln -sf $1 /tmp/current_wallpaper
cp $1 ~/.config/rofi/background.png
