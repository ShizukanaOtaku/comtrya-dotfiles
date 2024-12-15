#!/bin/sh
title=`playerctl metadata 2>&1 | grep xesam:title | head -n 1 | awk -F' ' '{$1=$2="";print $0}' | xargs`
artists=`playerctl metadata 2>&1 | grep xesam:artist | head -n 1 | awk -F' ' '{$1=$2="";print $0}' | xargs`
player_status=`playerctl status 2>&1`
icon=""
case $player_status in
  "No players found") 
    exit
    ;;
  "Playing") icon="";;
  *);;
esac
echo $icon $title - $artists
