#!/bin/bash

# Exit on error
set -eE

clear

# Must not be run as root
[ "$EUID" -eq 0 ] && abort "Error, must not be run as root"

# Verify the script is running on Arch Linux
if ! grep -qi "arch" /etc/os-release; then
    echo "This script must be run on Arch Linux."
    exit 1
fi

# get username and email from input
read -p "Enter your username for git: " USERNAME
read -p "Enter your email for git: " EMAIL

echo "Username: $USERNAME"
echo "Email: $EMAIL"

echo "Home directory: $HOME"

# Set configuration
source ./config.sh

# Install packages
source ./packages.sh

echo "Installation complete!"

echo "Reboot is recommended to apply all changes."

read -p "Do you want to reboot now? (y/N): " CONFIRM
if [[ ! "$CONFIRM" =~ ^[Yy]$ ]]; then
    echo "Reboot cancelled."
    exit 0
fi

sleep 5
sudo reboot


