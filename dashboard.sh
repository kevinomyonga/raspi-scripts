#!/bin/bash

# Clear the screen
tput clear

# Move cursor to screen location X,Y (top left is 0,0)
tput cup 3 15

# Set a foreground colour using ANSI escape
tput setaf 3
tput bold
echo "RASPI - SCRIPTS By Kevin Omyonga (c) 2019"
tput sgr0

tput cup 5 17
# Set reverse video mode
tput rev
echo "MAIN - MENU"
tput sgr0

tput cup 7 15
echo "1. Update"

tput cup 8 15
echo "2. Disk Format"

tput cup 9 15
echo "3. Git Setup"

tput cup 10 15
echo "4. Controller"

# Set bold mode
tput bold
tput cup 12 15
read -p "Enter your choice [1-4] " choice

tput clear
tput sgr0
tput rc
