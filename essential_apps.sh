#!/bin/sh

# Update and Upgrade of system's package list
sudo apt-get update && sudo apt-get upgrade -y

# NTFS Support
sudo apt-get install ntfs-3g -y

# EXFAT Support
sudo apt-get install exfat-fuse exfat-utils -y

# Dialog
sudo apt-get install dialog
