#!/bin/bash

while true; do

    bat_lvl=$(cat /sys/class/power_supply/BAT*/capacity)
    bat_status=$(cat /sys/class/power_supply/BAT*/status)

    if [ $bat_lvl -le $1 ] && [ "$bat_status" == "Discharging" ]; then
        notify-send --urgency=CRITICAL "Battery Low" "Level: ${bat_lvl}%"
        sleep 1200
    else
        sleep 120
    fi

done
