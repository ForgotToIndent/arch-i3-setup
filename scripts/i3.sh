#!/usr/bin/env bash
set -euo pipefail

#for setting up i3 configs and dotfiles
#directs it to the dotfiles folder


echo "Setting up i3 configs..."

mkdir -p ~/.config/i3
rsync -av dotfiles/i3/ ~/.config/i3/

mkdir -p ~/.config/picom
rsync -av dotfiles/picom/ ~/.config/picom/