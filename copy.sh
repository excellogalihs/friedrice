#!/bin/bash
cp -f ~/friedrice/.zshrc ~/
cp -f ~/friedrice/.config/starship.toml ~/.config/
rm -rf ~/.config/{fastfetch,hypr,kitty,waybar,wofi}
cp -r ~/friedrice/.config/{fastfetch,hypr,kitty,waybar,wofi} ~/.config/
reboot
