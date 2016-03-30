#!/bin/bash

# Folders
rm -rf ~/Documents
rm -rf ~/Public
rm -rf ~/Templates
rm -rf ~/Videos
rm -rf ~/Pictures
rm -rf ~/Music
mkdir ~/College
mkdir ~/Git
mkdir ~/Projects

# Adding needed PPAs to apt
sudo add-apt-repository -y ppa:webupd8team/atom # Atom.io Text Editor
sudo add-apt-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main" # Chrome Browser
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository -y ppa:mpstark/elementary-tweaks-daily # Elementary Tweaks for 0.3 Freya


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
    elementary-tweaks \
    google-chrome-stable \
    atom
    # thinkfan \

# Configure System
cd ~/Git && git clone https://github.com/creativeusername/config.git && cd ~
ln -sf ~/Git/config/bash_aliases ~/.bash_aliases
ln -sf ~/Git/config/bashrc ~/.bashrc
ln -sf ~/Git/config/gitconfig ~/.gitconfig
ln -sf ~/Git/config/tmux.conf ~/.tmux.conf

# Configure Vim
ln -sf ~/Git/config/vimrc.local ~/.vimrc.local
ln -sf ~/Git/config/vimrc.before.local ~/.vimrc.before.local
ln -sf ~/Git/config/vimrc.bundles.local ~/.vimrc.bundles.local

gconftool --load ~/Git/config/guake.settings

# Install Node Version Manager
curl https://raw.githubusercontent.com/creationix/nvm/v0.24.1/install.sh | bash
# TODO
# sourcing bashrc has no effect on the current shell thus it does not see
# nvm. It might work running these two commands in a subshell. I have to read
# up on that
# nvm install stable
# nvm alias default stable

# Configure Node, Install all needed packages
# TODO

# Configure Atom
apm install monokai
# TODO create package list file

# Thinkpad fan settings
# http://hackmemory.wordpress.com/2012/07/19/lenovo-x200-tuning/
# echo "tp_smapi" | sudo tee -a /etc/modules
# echo "thinkpad_acpi" | sudo tee -a /etc/modules
# echo "options thinkpad_acpi fan_control=1" | sudo tee /etc/modprobe.d/thinkpad_acpi.conf
# sudo cp ./data/etc/default/thinkfan /etc/default/thinkfan
# sudo cp ./data/etc/thinkfan.conf /etc/thinkfan.conf
# sudo chmod 744 /etc/default/thinkfan
# sudo chmod 744 /etc/thinkfan.conf

# Prompt for a reboot
clear
echo ""
echo "===================="
echo " TIME FOR A REBOOT! "
echo "===================="
echo ""
