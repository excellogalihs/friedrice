#!/bin/bash
set -e
sudo pacman -S --noconfirm git base-devel pipewire pipewire-pulse wireplumber pavucontrol hyprland hyprpaper hyprlock hyprpolkitagent xdg-desktop-portal-hyprland sddm kitty zsh zsh-autosuggestions zsh-syntax-highlighting starship waybar wofi swaync nvim yazi fzf bat zoxide eza fastfetch grim wl-clipboard firefox ttf-jetbrains-mono-nerd
rm -rf yay
git clone https://aur.archlinux.org/yay
cd yay
makepkg -si --noconfirm
yay -S --noconfirm hyprmod
chsh -s $(which zsh)
cp -f ~/friedrice/.zshrc ~/
cp -f ~/friedrice/.config/starship.toml ~/.config/
rm -rf ~/.config/{fastfetch,hypr,kitty,waybar,wofi}
cp -r ~/friedrice/.config/{fastfetch,hypr,kitty,waybar,wofi} ~/.config/
reboot
