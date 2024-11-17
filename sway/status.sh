#!/bin/bash

datehour=$(date +'%d/%m/%Y %X')
volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
battery="$(cat /sys/class/power_supply/BAT1/capacity)% $(cat /sys/class/power_supply/BAT1/status)"
mic="Mic$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | tr -d Volume:)"
echo "$mic | $volume | $battery | $datehour"
