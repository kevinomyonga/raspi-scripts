#!/bin/sh

# Prompt user for details
read -r -p 'First Name: ' fname

read -r -p 'Last Name: ' lname

read -r -p 'Email: ' email

# Tell Git who you are
git config --global user.name "$fname $lname"

git config --global user.email "$email"

# Turn on code highlighting
git config --global color.ui true

# View Git configurations
git config --list
