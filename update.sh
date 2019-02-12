#!/bin/sh

# Update and Upgrade of system's package list
sudo apt-get update && sudo apt-get upgrade -y

# Upgrade all installed packages to their latest versions
sudo apt-get -y  dist-upgrade

# Update the firmware
sudo rpi-update

# Remove packages that were automatically installed to satisfy dependencies for other packages and are now no longer needed
sudo apt-get autoremove

# Clean obsolete packages
sudo apt-get autoclean

# Trigger a reboot
sudo reboot
