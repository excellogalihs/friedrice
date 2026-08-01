#!/bin/bash
set -e

echo "Initializing friedrice setup by excellogalihs..."

echo "Installing packages..."
sudo pacman -S git base-devel hyprland hyprpaper hyprpolkitagent xdg-desktop-portal-hyprland sddm pipewire pipewire-pulse wireplumber kitty zsh zsh-autosuggestions zsh-syntax-highlighting starship waybar swaync wofi firefox ttf-jetbrains-mono-nerd grim wl-clipboard nvim yazi fzf bat zoxide eza fastfetch

echo "Configuring shell..."
[[ $SHELL == *zsh ]] || (chsh -s $(which zsh))

echo "Installing yay..."
[[ yay -v &>/dev/null ]] || (git clone https://aur.archlinux.org/yay && cd yay && makepkg -si && cd && rm -rf yay)

echo "Copying configs..."
cp -f ~/friedrice/.zshrc ~/
cp -f ~/friedrice/.config/starship.toml ~/.config/
rm -rf ~/.config/{fastfetch,hypr,kitty,waybar,wofi}
cp -r ~/friedrice/.config/{fastfetch,hypr,kitty,waybar,wofi} ~/.config/

echo "Installation complete! Rebooting..."
reboot
