#!/bin/bash

APP_NAME="X11"

echo -e "\033[0;32m====================================="
echo -e "\033[1;32mThe Linux IT Guy - Rocky Linux 9.4 Install Script"
echo -e "\033[1;32mInstalling $APP_NAME"
echo -e "\033[0;32m=====================================\033[0m"

# https://forums.rockylinux.org/t/nvidia-drivers-on-rocky-linux/12366
# Update, Install X11, and reboot

# Update
sudo dnf update -y

# X11
sudo dnf install xorg-x11-server-Xorg xorg-x11-xauth -y

echo "$APP_NAME has been installed, and the system has been updated. Press Enter to reboot into your system..."
read
# Reboot if you had a kernel update
reboot
