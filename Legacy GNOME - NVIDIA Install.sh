#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

APP_NAME="GNOME Desktop & NVIDIA Drivers"

echo -e "\033[0;32m===================================================="
echo -e "\033[1;32mThe Linux IT Guy - Rocky Linux 10.2 GNOME + NVIDIA Install Script"
echo -e "\033[1;32mInstalling: $APP_NAME"
echo -e "\033[0;32m====================================================\033[0m"

# 1. System Updates & Repository Setup
echo -e "\033[1;34m--> Updating system and enabling repositories...\033[0m"
sudo dnf update -y
sudo dnf config-manager --enable crb

# Add NVIDIA Repository
sudo dnf config-manager --add-repo https://developer.download.nvidia.com/compute/cuda/repos/rhel10/x86_64/cuda-rhel10.repo
sudo dnf clean expire-cache

# 2. Install Development Tools & Kernel Headers (Required for NVIDIA)
echo -e "\033[1;34m--> Installing Development Tools and Kernel Headers...\033[0m"
sudo dnf group install "Development Tools" -y
sudo dnf install kernel-devel-$(uname -r) kernel-headers-$(uname -r) -y

# 3. Install NVIDIA Drivers & Configure Boot Parameters
echo -e "\033[1;34m--> Installing NVIDIA Proprietary Drivers for Older Cards...\033[0m"
# SWAPPED: nvidia-open changed to cuda-drivers
sudo dnf install cuda-drivers-580 -y

echo -e "\033[1;34m--> Configuring GRUB to blacklist Nouveau and enable DRM modesetting...\033[0m"
sudo grubby --update-kernel=ALL --args="rd.driver.blacklist=nouveau modprobe.blacklist=nouveau nvidia-drm.modeset=1"

# 4. Install GNOME Desktop Environment & Extra Apps
echo -e "\033[1;34m--> Installing GNOME Desktop Environment...\033[0m"

# The next line installs GNOME.
sudo dnf group install "Server with GUI" -y
sudo dnf install mpv -y # add any additional apps you may want here, enjoy :)

# 5. Set Default Boot Target to GUI
echo -e "\033[1;34m--> Setting default boot target to graphical mode...\033[0m"
sudo systemctl set-default graphical.target

# If this helped you, please dont forget to like and subscribe (youtube.com/@TheLinuxITGuy)
echo -e "\033[0;32m===================================================="
echo -e "\033[1;32mInstallation complete successfully!"
echo -e "\033[1;31mPlease reboot your system now to apply all changes.\033[0m"
echo -e "\033[0;32m====================================================\033[0m"
