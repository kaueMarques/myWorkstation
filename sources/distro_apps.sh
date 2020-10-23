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
    'mariadb-server'
    'mariadb-client'
    'nginx'
    'php7.4'

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

    #Customization
    'gnome-tweak-tool'
    'breeze-cursor-theme'
    'yaru-theme-gnome-shell'
    'yaru-theme-gtk'
    'yaru-theme-icon'
    'yaru-theme-sound'
)


echo "Intaling your Distro apps"
for i in "${APPS[@]}";
do  
    echo ""
    echo " --- INTALING: $i "
    $DOWNLOADER $i
done
