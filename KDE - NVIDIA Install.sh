#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

APP_NAME="KDE Plasma Desktop & NVIDIA Drivers"

echo -e "\033[0;32m===================================================="
echo -e "\033[1;32mThe Linux IT Guy - Rocky Linux 10.2 KDE + NVIDIA Install Script"
echo -e "\033[1;32mInstalling: $APP_NAME"
echo -e "\033[0;32m====================================================\033[0m"

# 1. System Updates & Repository Setup
echo -e "\033[1;34m--> Updating system and enabling repositories...\033[0m"
sudo dnf update -y
sudo dnf config-manager --enable crb
sudo dnf install epel-release -y

# Add NVIDIA Repository
sudo dnf config-manager --add-repo https://developer.download.nvidia.com/compute/cuda/repos/rhel10/x86_64/cuda-rhel10.repo
sudo dnf clean expire-cache

# 2. Install Development Tools & Kernel Headers (Required for NVIDIA)
echo -e "\033[1;34m--> Installing Development Tools and Kernel Headers...\033[0m"
sudo dnf groupinstall "Development Tools" -y
sudo dnf install kernel-devel-$(uname -r) kernel-headers-$(uname -r) -y

# 3. Install NVIDIA Drivers & Configure Boot Parameters
echo -e "\033[1;34m--> Installing NVIDIA Open Drivers...\033[0m"
sudo dnf install nvidia-open -y

echo -e "\033[1;34m--> Configuring GRUB to blacklist Nouveau and enable DRM modesetting...\033[0m"
sudo grubby --update-kernel=ALL --args="rd.driver.blacklist=nouveau modprobe.blacklist=nouveau nvidia-drm.modeset=1"

# 4. Install KDE Desktop Environment & Extra Apps
echo -e "\033[1;34m--> Installing KDE Desktop Environment...\033[0m"
sudo dnf group install "kde-desktop-environment" -y
sudo dnf install firefox mpv -y # add any additional apps you may want here, enjoy :)

# 5. Set Default Boot Target to GUI
echo -e "\033[1;34m--> Setting default boot target to graphical mode...\033[0m"
sudo systemctl set-default graphical.target

# If this helped you, please dont forget to like and subscribe (youtube.com/@TheLinuxITGuy)
echo -e "\033[0;32m===================================================="
echo -e "\033[1;32mInstallation complete successfully!"
echo -e "\033[1;31mPlease reboot your system now to apply all changes.\033[0m"
echo -e "\033[0;32m====================================================\033[0m"
