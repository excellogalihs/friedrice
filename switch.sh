#!/bin/bash
choice=$(printf "dynamic\nfull" | wofi --dmenu --prompt "Waybar Layout:")
ln -sf ~/.config/waybar/styles/$choice/config.jsonc ~/.config/waybar/config.jsonc
ln -sf ~/.config/waybar/styles/$choice/style.css ~/.config/waybar/style.css
killall waybar
waybar
