#!/bin/bash

APP_NAME="epel-release and Official NVIDIA repo"

echo -e "\033[0;32m====================================="
echo -e "\033[1;32mThe Linux IT Guy - Rocky Linux 9.4 Pre-Install NVIDIA Script"
echo -e "\033[1;32mInstalling $APP_NAME"
echo -e "\033[0;32m=====================================\033[0m"

# https://forums.rockylinux.org/t/nvidia-drivers-on-rocky-linux/12366
# rpmfusion-free-release and epel-release are part of extras
sudo dnf install epel-release -y

# Get the major version and download the repo file
curver="rhel$(rpm -E %rhel)"
sudo wget -O /etc/yum.repos.d/cuda-$curver.repo \
  http://developer.download.nvidia.com/compute/cuda/repos/$curver/$(uname -i)/cuda-$curver.repo

# CRB/PowerTools must be enabled
sudo crb enable

# Perform a dnf update now
sudo dnf update -y

echo "$APP_NAME has been installed. Press Enter to reboot the system..."
read
# Reboot if you had a kernel update
reboot
