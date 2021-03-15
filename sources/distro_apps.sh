#!/usr/bin/env bash

DOWNLOADER="sudo apt install -y "

APPS=(
    #Development
    'code'
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
    'yaru-theme-gnome-shell'
    'yaru-theme-gtk'
    'yaru-theme-icon'
    'yaru-theme-sound'
)


echo "Installing your Distro apps"
for i in "${APPS[@]}";
do  
    echo ""
    echo " --- INSTALING: $i "
    $DOWNLOADER $i
done
