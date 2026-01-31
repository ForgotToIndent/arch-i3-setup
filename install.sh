#!/usr/bin/env bash

#makes script safe and predictable
#-e is exit immediate on error, -u error on unset variables
#pipefail fails if any command in a pipe fails, prevents silent failures
set -euo pipefail

echo "Your Arch + i3 post-install script is starting..."

#Ensure that it is Arch
if ! grep -qi arch /etc/os-release; then
    echo "x this script is for Arch Install only"
    exit 1
fi

#ask for sudo once
sudo -v

#run modules
scripts/packages.sh
scripts/services.sh
scripts/i3.sh

echo "All done. Reboot your system"