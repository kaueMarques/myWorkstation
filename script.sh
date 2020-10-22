#!/usr/bin/env bash

#################### Variables ####################  
DOWNLOADER_DISTRO_DEB="sudo apt install -y "

#################### Arrays ####################  

DISTRO_APPS=(
    #Development
    'code'
    'neovim'  
    'nodejs'
    'npm'
    'python3'
    'python3-pip'
    'gnome-boxes'
    'git'
    'atom'
    'zsh'
    'openjdk-11-jdk'
    'docker.io'
    'google-chrome-stable'
    'mariadb-server'
    'mariadb-client'

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
    'yaru-theme'
    'yaru-theme-gnome-shell'
    'yaru-theme-gtk'
    'yaru-theme-icon'
    'yaru-theme-sound'
)

#################### Actions ####################  

echo ' --- This 1st version was made for POP OS '

## Removendo travas eventuais do apt ##
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

echo ' --- Updating your OS'
sudo apt -y update && sudo apt -y upgrade

#Make my defaults paths
mkdir ~/_ti ~/_ti/sudy ~/_ti/projects

#Moving configs files
mv .zshrc /$HOME

#Snaps
sudo snap install netbeans --classic
sudo snap install spotify
sudo snap install 


for i in "${DISTRO_APPS[@]}";
do  
    echo ""
    echo " --- INTALING: $i "
    $DOWNLOADER_DISTRO_DEB $i
done


#Finishing
echo ''
echo " --- Finishing..."
sudo apt update && sudo apt dist-upgrade -y
flatpak update
sudo apt autoclean
sudo apt autoremove -y
echo " --- Let's Rock! All done!"
curl parrot.live
