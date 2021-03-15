#!/usr/bin/env bash

echo ' --- This 1st version was made for POP OS '
echo ' --- Updating your OS'    

#################### Base Commands #################### 
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock
sudo apt -y update && sudo apt -y upgrade

#################### Making Paths #################### 
mkdir $HOME/_ti && mkdir $HOME/_ti/sudy && mkdir $HOME/_ti/projects


#################### Instalation and Configs #################### 

#SOURCES 
sudo bash ./sources/*.sh
sudo bash ./sources/appScripts/*.sh

#Droping your scripts in sources/appScripts

#Moving configs files
cp $HOME/configs/.zshrc $HOME  && zsh

#################### Finishing #################### 
echo ''
echo " --- Finishing..."
sudo apt update && sudo apt dist-upgrade -y
flatpak update 
sudo apt autoclean
sudo apt autoremove -y
echo ""
echo " --- Let's Rock! All done!"
#end line below
