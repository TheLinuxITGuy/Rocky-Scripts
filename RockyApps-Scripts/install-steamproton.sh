#!/bin/bash

APP_NAME="com.valvesoftware.Steam"
APP2_NAME="net.davidotek.pupgui2"

echo -e "\033[38;2;16;185;129m====================================="
echo -e "\033[38;2;16;185;129mThe Linux IT Guy - Rocky Linux Scripts"
echo -e "\033[38;2;16;185;129mInstalling Steam and ProtonUp-qt"
echo -e "\033[38;2;16;185;129m=====================================\033[0m"

# Check if Flatpak is installed
if ! command -v flatpak &> /dev/null
then
    echo "Flatpak is not installed. Installing now..."
    sudo dnf install -y flatpak
fi

# Add Flathub repository if not already added
if ! flatpak remotes | grep -q "flathub"
then
    echo "Flathub repository is not added. Adding now..."
    sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
fi

# Install Steam
if ! flatpak list | grep -q "$APP_NAME"
then
    echo "$APP_NAME is not installed. Installing now..."
    sudo flatpak install -y flathub $APP_NAME
else
    echo "$APP_NAME is already installed. Skipping installation."
fi

# Install ProtonUp-Qt
if ! flatpak list | grep -q "$APP2_NAME"
then
    echo "$APP2_NAME is not installed. Installing now..."
    sudo flatpak install -y flathub $APP2_NAME
else
    echo "$APP2_NAME is already installed. Skipping installation."
fi
