#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/images/"
FOCUSED_MONITOR=$(hyprctl monitors -j | jq -r '.[] | select(.focused) | .name')
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

hyprctl hyprpaper reload "$FOCUSED_MONITOR","$WALLPAPER"
