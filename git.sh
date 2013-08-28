#!/usr/bin/env bash

if [ -z "$1" -a -z "$2" ]; then
    echo 'Usage: ./git.sh "user" "email@me.com"'
    exit 0
fi

#sudo apt-get install git
#git config --global user.name "$1"
#git config --global user.email "$2"

# Create a new ssh-key
#echo "Genereting a new ssh-key"
#ssh-keygen -t rsa -C "$2"

# copy the public key to clipboard
#sudo apt-get install xclip

#xclip -sel clip < ~/.ssh/id_rsa.pub

#echo "\nYour public key is in your clipboad."
