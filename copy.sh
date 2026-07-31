#!/bin/bash
cp -f ~/friedrice/.zshrc ~
rm -rf ~/.config/{fastfetch,hypr,waybar,wofi}
cp -r ~/friedrice/.config/{fastfetch,hypr,waybar,wofi} ~/.config/
hyprctl dispatch exit
