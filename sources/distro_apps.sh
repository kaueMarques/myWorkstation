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
    'gnome-boxes'
    'git'
    'atom'
    'zsh'
    'openjdk-11-jdk'
    'docker.io'
    'google-chrome-stable'
 

    #Others
    'firefox'
    'curl'
    'deepin-terminal'
    'transmission'
    'gnome-clocks'   
    'vlc'   
    'flatpak'
    'lutris'
    'steam-devices'
    'steam-installer'
    'steam:i386'
    'playonlinux'
    'gnome-contacts'
    'snapd'
    'timeshift'

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
