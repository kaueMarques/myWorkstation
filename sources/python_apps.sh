#!/usr/bin/env bash

DOWNLOADER='sudo pip3 install '

APPS=(
    'youtube-dl'
    'numpy'
    'pandas'
)

for i in "${FLATPAK_APPS[@]}";
do
    echo ""
    echo " --- INTALING: $i "
    $DOWNLOADER $i
done
