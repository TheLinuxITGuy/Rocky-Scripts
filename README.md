# Rocky-Scripts
Various scripts for Rocky Linux 9.4

## How do I use it?
Follow the directions below.
### Git method
1. Run through your 9.4 install and be sure to select “Server” with NO GUI
2. Login to TTY, then clone this project, and cd into it: 
    1. `git clone https://github.com/TheLinuxITGuy/Rocky-Scripts.git && cd Rocky-Scripts`
    2. Type: `chmod u+x ./*.*`
    3. Type: `./1.install-X11andKDE.sh` Let this script complete and go to the next step.
    4. Type: `./2.preinstall-nvidia.sh`
4. The script will run and reboot when finished.
5. Log back into your TTY session. (We do not have a GUI just yet)
6. From a Terminal, cd back into the Rocky-Scripts folder: 
    1. `cd Rocky-Scripts`
    2. Type: `./3.install-nvidia.sh`
    3. Type: `./4.set-desktopenvironment.sh` Let this script finish, then boot into your KDE NVIDIA Install. :)
