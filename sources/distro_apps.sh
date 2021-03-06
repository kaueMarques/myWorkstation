#!/usr/bin/env bash

echo ""
echo "############### DISTOS APPS ###############"

DOWNLOADER="sudo apt install -y "

APPS=(
    #Development
    'neovim'  
    'nodejs'
    'npm'
    'python3'
    'python3-pip'
    'jupyter-notebook'
    'jupyter-hub'
    'gnome-boxes'
    'git'
    'atom'
    'zsh'
    'openjdk-11-jdk'
    'google-chrome-stable'
 

    #Others
    'firefox'
    'curl'
    'transmission'
    'gnome-clocks'   
    'vlc'   
    'flatpak'
    'lutris'
    'playonlinux'
    'gnome-contacts'
    'snapd'


    #Customization
    'gnome-tweak-tool'
    'breeze-cursor-theme'
    'yaru-theme-sound'

    
    
)


echo "Installing your Distro apps"
for i in "${APPS[@]}";
do  
    echo ""
    echo " --- INSTALING: $i "
    $DOWNLOADER $i
done
#end line
