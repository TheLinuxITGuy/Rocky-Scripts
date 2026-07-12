# 🏔️ Rocky-Scripts
Easily install Rocky Linux 10.2 with NVIDIA drivers and KDE or GNOME as your desktop environment. In the Usage example, I use KDE.

# I am working on the new scripts now. Please come back after the video goes live. I'm still testing.

## 🎥 Video
[![Video](https://img.youtube.com/vi/clZABizrxeM/maxresdefault.jpg)](https://youtu.be/clZABizrxeM)

## The Architecture Breakdown - PLEASE READ
NVIDIA split its driver support based on the presence of an on-chip hardware component called the GSP (GPU System Processor). New cards work with the Open Drivers (nvidia-open). 

These include: 
- Turing (GTX 16xx / RTX 20xx)
- Ampere (RTX 30xx)
- Ada Lovelace (RTX 40xx)
- Blackwell (RTX 50xx, which is what I have, the 5060 Ti).
  
My script has only been tested with the nvidia-open driver. I will need someone to test on older hardware. Reach out to me on social if you have a machine you can test on. I'll drop the test script in the repo as well.

## 🖥️ Usage 
1. Download the Rocky Linux 10.2 DVD edition: https://rockylinux.org/download
2. During the 10.2 install, be sure to select `Server without GUI`
3. Login to TTY, download git, then clone this project, and cd into it: 
    1. `sudo dnf install git`
    2. `git clone https://github.com/TheLinuxITGuy/Rocky-Scripts.git && cd Rocky-Scripts`
    3. Type: `chmod u+x *.sh`
    4. Type: `./KDE - NVIDIA Install.sh`
5. I've combined the 5 scripts from before to work as a single script this time

## 💖 Sponsor
https://github.com/sponsors/TheLinuxITGuy
