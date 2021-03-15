#!/usr/bin/env bash

DOWNLOADER='sudo pip3 install '

APPS=(
    'youtube-dl'
    'numpy'
    'pandas'
)

for i in "${APPS[@]}";
do
    echo ""
    echo " --- ISNTALLING: $i "
    $DOWNLOADER $i
done
#end line below
