#!/bin/bash

APP_NAME="neofetch"

echo -e "\033[0;32m====================================="
echo -e "\033[1;32mThe Linux IT Guy - Rocky Linux Scripts"
echo -e "\033[1;32mRemoving $APP_NAME"
echo -e "\033[0;32m=====================================\033[0m"

# Check if the app is already installed
if command -v $APP_NAME &> /dev/null
then
    echo "$APP_NAME is installed. Removing now..."
    # Remove the app
    sudo dnf remove $APP_NAME -y
else
    echo "$APP_NAME is not installed. Skipping removal."
fi
