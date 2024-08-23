#!/bin/bash

APP_NAME="com.valvesoftware.Steam"
APP2_NAME="net.davidotek.pupgui2"

echo -e "\033[38;2;16;185;129m====================================="
echo -e "\033[38;2;16;185;129mThe Linux IT Guy - Rocky Linux Scripts"
echo -e "\033[38;2;16;185;129mRemoving Steam and ProtonUp-qt"
echo -e "\033[38;2;16;185;129m=====================================\033[0m"

# Check if Flatpak is installed
if ! command -v flatpak &> /dev/null
then
    echo "Flatpak is not installed. Nothing to remove."
    exit 1
fi

# Remove Steam
if flatpak list | grep -q "$APP_NAME"
then
    echo "Removing $APP_NAME..."
    sudo flatpak uninstall -y $APP_NAME
else
    echo "$APP_NAME is not installed. Skipping removal."
fi

# Remove ProtonUp-Qt
if flatpak list | grep -q "$APP2_NAME"
then
    echo "Removing $APP2_NAME..."
    sudo flatpak uninstall -y $APP2_NAME
else
    echo "$APP2_NAME is not installed. Skipping removal."
fi
