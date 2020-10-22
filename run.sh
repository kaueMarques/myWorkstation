#!/usr/bin/env bash

echo ' --- This 1st version was made for POP OS '
echo ' --- Updating your OS'

#################### Base Commands #################### 

sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock
sudo apt -y update && sudo apt -y upgrade

#################### Making Paths #################### 
mkdir $HOME/_ti $HOME/_ti/sudy $HOME/_ti/projects


#################### Instalation and Configs #################### 
sudo bash ./sources/distro_apps.sh
sudo bash ./sources/flatpak_apps.sh
sudo bash ./sources/python_apps.sh

#Moving configs files
cp ./configs/.zshrc /$HOME

#################### Finishing #################### 
echo ''
echo " --- Finishing..."
sudo apt update && sudo apt dist-upgrade -y
flatpak update 
sudo apt autoclean
sudo apt autoremove -y
echo ""
echo " --- Let's Rock! All done!"
