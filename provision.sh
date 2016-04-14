#!/bin/bash

# Folders
#rm -rf ~/Documents
#rm -rf ~/Public
rm -rf ~/Templates
#rm -rf ~/Videos
#rm -rf ~/Pictures
#rm -rf ~/Music
mkdir ~/College
mkdir ~/Git
mkdir ~/Projects

# Adding needed PPAs to apt
sudo add-apt-repository -y ppa:webupd8team/atom # Atom.io Text Editor
sudo add-apt-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main" # Chrome Browser
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# Basic update
sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes upgrade

# Install apps. Comment out if not needed
sudo apt-get -y install \
    guake \
    vim \
    tmux \
    aptitude \
    git \
    curl \
    gnome-system-monitor \
    google-chrome-stable \
    atom

# Install Node Version Manager
curl https://raw.githubusercontent.com/creationix/nvm/v0.24.1/install.sh | bash
# TODO Configure Node, Install packages
# nvm install stable
# nvm alias default stable

#Install Ruby Version Manager
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -L https://get.rvm.io | bash -s stable
# TODO Configure RVM, Install gems
# rvm install [ruby-]2.3[.0]

# Configure System
cd ~/Git && git clone https://github.com/creativeusername/config.git && cd ~
ln -sf ~/Git/config/bash_aliases ~/.bash_aliases
ln -sf ~/Git/config/bashrc ~/.bashrc
ln -sf ~/Git/config/gitconfig ~/.gitconfig
ln -sf ~/Git/config/tmux.conf ~/.tmux.conf
ln -sf ~/Git/config/pathrc ~/.pathrc

# Configure Vim
ln -sf ~/Git/config/vimrc.local ~/.vimrc.local
ln -sf ~/Git/config/vimrc.before.local ~/.vimrc.before.local
ln -sf ~/Git/config/vimrc.bundles.local ~/.vimrc.bundles.local

# Load Themes for guake and gnome-terminal
$HOME/Git/config/base16-tomorrow.dark.gnome.sh
$HOME/Git/config/base16-tomorrow.dark.guake.sh

# Configure Atom
# TODO create package list file
# apm install monokai

# Prompt for a reboot
clear
echo ""
echo "===================="
echo " TIME FOR A REBOOT! "
echo "===================="
echo ""
