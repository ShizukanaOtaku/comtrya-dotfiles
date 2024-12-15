#!/bin/sh
set_wallpaper.sh $(find $wallpapers_path -type f | shuf -n 1)
