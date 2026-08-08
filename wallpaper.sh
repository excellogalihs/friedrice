#!/bin/bash
choice=$(ls ~/friedrice/wallpapers/ | wofi --dmenu --prompt "Wallpaper:")
awww img ~/friedrice/wallpapers/"$choice" --transition-type grow --transition-duration 3
