#!/usr/bin/env bash

#zsh
sudo apt-get install zsh -y

# oh-my-zsh
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

# color solarized
git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git ~/.terminal-solarized
~/.terminal-solarized/install.sh
