#!/bin/bash

APP_NAME="KDE"

echo -e "\033[0;32m====================================="
echo -e "\033[1;32mThe Linux IT Guy - Rocky Linux 9.4 Install Script"
echo -e "\033[1;32mSetting $APP_NAME as the Desktop Enviornment"
echo -e "\033[0;32m=====================================\033[0m"

sudo systemctl set-default graphical.target
sudo systemctl enable sddm

echo "$APP_NAME has been configured as your Desktop Environment. Press Enter to reboot into your system..."
read
# Reboot if you had a kernel update
reboot
