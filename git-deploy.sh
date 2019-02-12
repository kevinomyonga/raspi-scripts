#!/bin/bash

#Prompt user for commit message
read -r -p 'Commit Message: ' desc

#Track all files
git add .
git add --all

# Track deletes
git add -u

# Commit with message
git commit -m "$desc"

# Push to origin
git push origin master
