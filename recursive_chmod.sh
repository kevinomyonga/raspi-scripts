#!/bin/sh

# Recursively make all *.sh files in the current folder executable
sudo find ./ -name "*.sh" -exec chmod +x {} \;
