#!/bin/bash

APP_NAME="nvidia-driver:latest-dkms"

echo -e "\033[0;32m====================================="
echo -e "\033[1;32mThe Linux IT Guy - Rocky Linux 9.4 Install NVIDIA Driver Script"
echo -e "\033[1;32mInstalling $APP_NAME"
echo -e "\033[0;32m=====================================\033[0m"

# https://forums.rockylinux.org/t/nvidia-drivers-on-rocky-linux/12366
# install nvidia driver from nvidia's official repo
sudo dnf module install nvidia-driver:latest-dkms -y
