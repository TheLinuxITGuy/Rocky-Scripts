#!/bin/bash

echo -e "\033[38;2;16;185;129m====================================="
echo -e "\033[38;2;16;185;129mThe Linux IT Guy - Rocky Linux Scripts"
echo -e "\033[38;2;16;185;129mEnabling Bluetooth"
echo -e "\033[38;2;16;185;129m=====================================\033[0m"

sudo systemctl start bluetooth # to start it for the session will stay disabled after reboot.

sudo systemctl enable bluetooth # to enable per default, will run after every boot.
