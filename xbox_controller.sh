#!/bin/sh

# Update and Upgrade of system's package list
sudo apt-get update && sudo apt-get upgrade -y

# XBOX Driver
sudo apt-get install xboxdrv -y

# Disable ERTM
sudo bash -c 'echo 1 > /sys/module/bluetooth/parameters/disable_ertm'

# Trigger  Reboot
sudo reboot

# Pairing
#########

# Start up Bluetooth tools
sudo bluetoothctl

# Switching the agent on
agent on
default-agent

# Scan for devices
scan on

# Connection
############

# Make a connection
connect YOUR_MAC_ADDRESS

# Add to trusted devices
trust YOUR_MAC_ADDRESS

# Quit bluetoothctl software
quit

# Install Joystick Toolset
sudo apt-get install joystick -y

# Test if controller is working
sudo jstest /dev/input/js0


# Control Pi with Controller
############################

sudo xboxdrv --detach-kernel-driver --silent --mouse
