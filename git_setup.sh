#!/bin/sh

# Tell Git who you are i.e. <FIRST_NAME><SPACE><LAST_NAME><SPACE><YOUR_EMAIL>
git config --global user.name "$1 $2"

git config --global user.email "$3"

# Turn on code highlighting
git config --global color.ui true

# View Git configurations
git config --list
