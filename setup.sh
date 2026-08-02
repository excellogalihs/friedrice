#!/bin/bash
set -e
sudo pacman -S --noconfirm --needed git base-devel pipewire pipewire-pulse wireplumber hyprland hyprpaper hyprpolkitagent hyprlock desktop-portal-hyprland sddm kitty waybar wofi swaync zsh zsh-autosuggestions zsh-syntax-highlighting starship nvim yazi fzf bat zoxide eza fastfetch grim wl-clipboard firefox ttf-jetbrains-mono-nerd
rm -rf yay
git clone https://aur.archlinux.org/yay
cd yay
makepkg -si --noconfirm
yay -S --noconfirm wlogout
chsh -s $(which zsh)
cp -f ~/friedrice/.zshrc ~/
cp -f ~/friedrice/.config/starship.toml ~/.config/
rm -rf ~/.config/{fastfetch,hypr,kitty,waybar,wofi}
cp -r ~/friedrice/.config/{fastfetch,hypr,kitty,waybar,wofi} ~/.config/
reboot
