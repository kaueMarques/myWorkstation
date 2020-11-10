#!/usr/bin/env bash

DOWNLOADER='sudo flatpak install '

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

APPS=(
    'com.wps.Office'
    'org.apache.netbeans'
    'com.spotify.Client'
    'org.telegram.desktop'
    'com.discordapp.Discord'
    'com.valvesoftware.Steam'
    'com.github.calo001.fondo'
)

for i in "${APPS[@]}";
do
    echo ""
    echo " --- INSTALLING: $i "
    $DOWNLOADER $i -y
done
