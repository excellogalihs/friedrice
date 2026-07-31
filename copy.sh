#!/bin/bash
sudo pacman -S hyprland hyprpaper hyprpolkitagent xdg-desktop-portal-hyprland sddm pipewire pipewire-pulse wireplumber kitty zsh-syntax-highlighting zsh-autosuggestions starship waybar swaync wofi firefox ttf-jetbrains-mono-nerd grim wl-clipboard nvim yazi fzf bat zoxide eza fastfetch
cp -f ~/friedrice/.zshrc ~/
cp -f ~/friedrice/.config/starship.toml ~/.config/
rm -rf ~/.config/{fastfetch,hypr,waybar,wofi}
cp -r ~/friedrice/.config/{fastfetch,hypr,waybar,wofi} ~/.config/
reboot
