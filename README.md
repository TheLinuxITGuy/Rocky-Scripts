# 🏔️ Rocky-Scripts
Easily install Rocky Linux 9.4 with NVIDIA drivers and KDE as your desktop environment. 

## 🎥 Video
[![Video](https://img.youtube.com/vi/clZABizrxeM/maxresdefault.jpg)](https://youtu.be/clZABizrxeM)

## 🖥️ Usage 
1. Download the Rocky Linux 9.4 DVD edition: https://rockylinux.org/download
2. During the 9.4 install, be sure to select “Server" without GUI
3. Login to TTY, download git, then clone this project, and cd into it: 
    1. `sudo dnf install git`
    2. `git clone https://github.com/TheLinuxITGuy/Rocky-Scripts.git && cd Rocky-Scripts`
    3. Type: `chmod u+x *.sh`
    4. Type: `./1.install-X11.sh`
4. The script will run and prompt to reboot when finished
    1. Log back into your TTY session. (We do not have a GUI just yet)
    2. From a Terminal, cd back into the Rocky-Scripts folder: 
    3. `cd Rocky-Scripts`
    5. Type: `./2.preinstall-nvidia.sh`
5. The script will run and prompt to reboot when finished
6. Log back into your TTY session. (We do not have a GUI just yet)
7. From a Terminal, cd back into the Rocky-Scripts folder: 
    1. `cd Rocky-Scripts`
    2. Type: `./3.install-nvidia.sh` This one takes some time ~5mins
    3. Type:`./4.install-KDE.sh`
    4. Type: `./5.set-desktopenvironment.sh` Let this script finish, then boot into your KDE NVIDIA Install when prompted.

## 💖 Donate
https://www.paypal.com/donate/?hosted_button_id=WPTX2BMBARSG2
