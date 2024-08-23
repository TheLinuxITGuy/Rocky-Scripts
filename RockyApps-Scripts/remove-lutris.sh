#!/bin/bash

APP_NAME="Lutris"

echo -e "\033[38;2;16;185;129m====================================="
echo -e "\033[38;2;16;185;129mThe Linux IT Guy - Rocky Linux Scripts"
echo -e "\033[38;2;16;185;129mRemoving $APP_NAME"
echo -e "\033[38;2;16;185;129m=====================================\033[0m"

# Uninstall
flatpak uninstall -y net.lutris.Lutris
