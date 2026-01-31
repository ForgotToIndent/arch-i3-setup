#!/usr/bin/env bash
set -euo pipefail

#script for starting services

echo "🔌 Enabling services..."

sudo systemctl enable iwd
sudo systemctl start iwd

sudo systemctl enable ly.service
sudo systemctl start ly.service

sudo systemctl enable dhcpcd
sudo systemctl start dhcpcd