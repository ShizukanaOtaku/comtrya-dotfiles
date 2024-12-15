#!/bin/bash
PREVIEW=true \
rofi -theme wallpaper_picker.rasi \
        -show filebrowser -filebrowser-command 'set_wallpaper.sh' \
        -filebrowser-directory "$wallpapers_path" \
        -filebrowser-sorting-method mtime \
        -selected-row 1 >/dev/null
