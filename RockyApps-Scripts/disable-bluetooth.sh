#!/bin/bash

echo -e "\033[38;2;16;185;129m====================================="
echo -e "\033[38;2;16;185;129mThe Linux IT Guy - Rocky Linux Scripts"
echo -e "\033[38;2;16;185;129mDisabling Bluetooth"
echo -e "\033[38;2;16;185;129m=====================================\033[0m"

sudo systemctl stop bluetooth # to stop it for the session will stay enabled after reboot.

sudo systemctl disable bluetooth # to disable per default, will run after every boot.

