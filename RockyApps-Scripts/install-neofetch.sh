#!/bin/bash

APP_NAME="neofetch"

echo -e "\033[38;2;16;185;129m====================================="
echo -e "\033[38;2;16;185;129mThe Linux IT Guy - Rocky Linux Scripts"
echo -e "\033[38;2;16;185;129mInstalling $APP_NAME and Applying the Rocky Linux icon fix"
echo -e "\033[38;2;16;185;129m=====================================\033[0m"

# Update the package list
sudo dnf update -y

# Install neofetch
sudo dnf install neofetch -y

# Fix neofetch icon for Rocky Linux
curl -s https://raw.githubusercontent.com/dylanaraps/neofetch/master/neofetch | grep -o Rocky
sudo curl -s https://raw.githubusercontent.com/dylanaraps/neofetch/master/neofetch -o /usr/bin/neofetch
