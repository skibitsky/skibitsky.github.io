#!/bin/bash

# Deploy first
sh deploy.sh

# Add all changes to dev repo git
git add .

# Commit changes
msg="rebuilding site `date`"
git commit -m "$msg"

# Push
git push origin master
