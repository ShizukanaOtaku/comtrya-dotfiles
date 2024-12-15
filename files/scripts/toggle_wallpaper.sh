#!/bin/sh
killall loop_wallpapers.sh 
if [ $? -eq 0 ]; then
  for i in {1..2}
  do
    rm /tmp/current_wallpaper
    rm ~/.config/rofi/background.png
    swww clear "$(cat /usr/share/themes/"$(gsettings get org.gnome.desktop.interface gtk-theme | tr -d \')"/gtk-*/gtk*.css | grep background-color \
      | tail -n 1 \
      | awk -F# '{print $2}' \
      | awk -F\; '{print $1}' \
      | awk -F' ' '{print $1}' \
      | grep -v '^[[:space:]]*$')"
  done
else
  loop_wallpapers.sh
fi
