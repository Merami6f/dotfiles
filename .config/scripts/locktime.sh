#!/usr/bin/env bash

if [[ -f "/usr/bin/swayidle" ]]; then
  echo "swayidle is installed"
  swayidle -w timeout 300 'swaylock -f' timeout 360 'systemctl suspend' resume 'hyprctl dispatch dpms on'
  else
    echo "swayidle not installed"
fi;

