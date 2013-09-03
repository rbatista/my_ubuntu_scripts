#!/usr/bin/env bash

GREEN='\e[0;32m'
RED='\e[0;31m'
NO_COLOR='\e[0m'

if [ -z "$1" -a -z "$2" ]; then
    echo -e "${RED}Usage: ./git.sh \"user\" \"email@me.com\"${NO_COLOR}"
    exit 0
fi

#sudo apt-get install git
git config --global user.name "$1"
git config --global user.email "$2"

# Create a new ssh-key
echo -e "\n${GREEN}Genereting a new ssh-key...${NO_COLOR}\n"
ssh-keygen -t rsa -C "$2"

# copy the public key to clipboard
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub

echo -e "\n${GREEN}Your public key is in your clipboad.${NO_COLOR}\n"
