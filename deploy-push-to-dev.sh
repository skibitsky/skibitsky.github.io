#!/bin/bash

# Deploy first
sh deploy.sh

# Add all changes to dev repo git
git add .

# Push
git push origin master
