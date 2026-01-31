#!/usr/bin/env bash
set -euo pipefail

echo "Install core packages..."

#list all packages that need downloading here
PKGS=(
    i3-gaps
    i3status
    dmenu
    picom
    feh
    kitty
    openssh
    networkmanager
    xorg
    xorg-xinit
    ly
    nano
    neovim
    sudo
    brightnessctl
    ripgrep
    git
    lxappearance
    iwd
    upower
    nnn
    gvfs
    usbutils
    zip
    unzip
    base-devel
    dhcpcd
)

#run command
sudo pacman -S --needed --noconfirm "${PKGS[@]}"