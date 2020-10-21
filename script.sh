#! /usr/bin/env bash

sudo apt -y update && sudo apt -y upgrade &&

DOWNLOAD_TMP="/tmp"
DOWNLOADER_DISTRO_DEB="sudo apt install -y "
DOWNLOADER_REPOSITORY_GITHUB="git clone "

URL_GOOGLE_CHROME="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"

DISTRO_APPS=(
    'curl'
    'neovim'  
    'code'
    'nodejs'
    'npm'
    'python3'
    'python3-pip'
    'deepin-terminal'
    'transmission'
    'gnome-boxes'
    'gnome-clocks'
    'gnome-tweak-tool'   
    'vlc'
    'git'
    'atom'
    'flatpak'
    'zsh'
    'lutris'
    'steam-devices'
    'steam-installer'
    'steam:i386'
    'playonlinux'
    'openjdk-11-jdk'
    'gnome-contacts'
)

#FLATPAK
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo -y
flatpak install flathub org.apache.netbeans -y


for i in "${DISTRO_APPS[@]}";
do  
    echo ""
    echo " -- INTALING: $i "
    $DOWNLOADER_DISTRO_DEB $i
done

#Finishing
echo " -- Terminando"
sudo apt update && sudo apt dist-upgrade -y
flatpak update
sudo apt autoclean
sudo apt autoremove -y
echo " -- FINALIZADO"
