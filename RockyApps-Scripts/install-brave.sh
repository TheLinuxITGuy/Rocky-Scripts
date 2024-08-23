#!/bin/bash

APP_NAME="Brave Browser"

echo -e "\033[38;2;16;185;129m====================================="
echo -e "\033[38;2;16;185;129mThe Linux IT Guy - Rocky Linux Scripts"
echo -e "\033[38;2;16;185;129mInstalling $APP_NAME"
echo -e "\033[38;2;16;185;129m=====================================\033[0m"

# Update the package list
sudo dnf update -y

# Install flatpak
sudo dnf install flatpak -y

# Add the Flathub repository
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install
flatpak install flathub com.brave.Browser -y
