#!/bin/bash
set -e

echo "Initializing friedrice setup by excellogalihs..."

echo "Installing packages..."
sudo pacman -S --noconfirm git base-devel pipewire pipewire-pulse wireplumber hyprland hyprpaper hyprpolkitagent xdg-desktop-portal-hyprland sddm kitty waybar wofi swaync zsh zsh-autosuggestions zsh-syntax-highlighting starship nvim yazi fzf bat zoxide eza fastfetch grim wl-clipboard firefox ttf-jetbrains-mono-nerd

echo "Configuring shell..."
chsh -s $(which zsh)

echo "Installing yay..."
git clone https://aur.archlinux.org/yay
cd yay
makepkg -si --noconfirm

echo "Copying configs..."
cp -f ~/friedrice/.zshrc ~/
cp -f ~/friedrice/.config/starship.toml ~/.config/
rm -rf ~/.config/{fastfetch,hypr,kitty,waybar,wofi}
cp -r ~/friedrice/.config/{fastfetch,hypr,kitty,waybar,wofi} ~/.config/

echo "Installation complete! Rebooting..."
reboot
