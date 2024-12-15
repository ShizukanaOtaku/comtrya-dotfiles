#!/bin/bash

aesthetic () {
  background=$(find $wallpapers_path/Aesthetic -type f | shuf -n 1)
  cp $background /tmp/hyprlock_hdmi
  cp $background /tmp/hyprlock_builtin
}

screenshot () {
  grim -o HDMI-A-1 -l 0 /tmp/hyprlock_hdmi & # External monitor
  grim -o eDP-1    -l 0 /tmp/hyprlock_builtin & # Built-in monitor
}

aesthetic
wait &&
pidof hyprlock || hyprlock # Launch only 1 at a time
