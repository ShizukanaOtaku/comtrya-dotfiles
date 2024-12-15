#!/bin/sh
set_wallpaper.sh $wallpapers_path/artix/$(ls $wallpapers_path/artix | shuf -n 1)
curl --location https://pic.re/image -o $wallpapers_path/random_wallpaper.png
set_wallpaper.sh $wallpapers_path/random_wallpaper.png
# convert $wallpapers_path/random_wallpaper.png $wallpapers_path/random_wallpaper.png # Ensure png format
# set_wallpaper.sh $wallpapers_path/random_wallpaper.png
