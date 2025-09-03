#!/bin/bash

# Exit on error
set -eE

clear

show_separator() {
  echo "----------------------------------------"
}

# Must not be run as root
[ "$EUID" -eq 0 ] && abort "Error, must not be run as root"

# Verify the script is running on Arch Linux
if ! grep -qi "arch" /etc/os-release; then
    echo "This script must be run on Arch Linux."
    exit 1
fi

# get username and email from input
read -p "Enter your username for git: " USERNAME
read -p "Enter your email for git and ssh: " EMAIL

echo "Username: $USERNAME"
echo "Email: $EMAIL"
echo "$0"

show_separator

echo "Home directory: $HOME"

# Set configuration
source ./config.sh

# Copy dotfiles
source ./dotfiles.sh

# Install packages
source ./packages.sh

echo "Installation complete!"

read -p "Do you want to restart the terminal now? (y/N): " CONFIRM
if [[ ! "$CONFIRM" =~ ^[Yy]$ ]]; then
    echo "Restart your terminal or run 'source ~/.bashrc' to make sure changes are applied."
    exit 0
fi

echo "Restarting terminal..."
sleep 3
exec bash


