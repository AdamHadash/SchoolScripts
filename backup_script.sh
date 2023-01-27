#!/bin/bash

# Author: Adam Hadash
# Date Created: 17/01/2023
# Last Modified: 27/01/2023

# Description
# Backups all files in home directory and saves them in a .tar archive.

# Usage
# backup_script

echo "Hello, ${USER^}"
echo "Backup of your home directory, $HOME, is now starting."
currentdir=$(pwd)
echo "Backup will be saved in current directory: $currentdir."

tar -cf $currentdir/my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar ~/* 2>/dev/null
echo "Backup completed successfully."
exit 0
