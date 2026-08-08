#!/bin/bash
choice=$(ls ~/friedrice/wallpapers/ | wofi --dmenu --prompt "Wallpaper:")
awww img ~/friedrice/wallpapers/$choice --transition-type random --transition-duration 3
rm .config/hypr/hyprlock.conf
touch .config/hypr/hyprlock.conf
echo "
background {
  path = ~/friedrice/wallpapers/$choice
  blur_size = 3
  blur_passes = 3
}
input-field {
  size = 300, 50
}
" >.config/hypr/hyprlock.conf
