######################################################################
#
# Useful aliases i found over the years.
#
# Author: Maximilian Kerp
# Date: April 13th, 2015
#
######################################################################

# Useful Navigation
alias sudo='sudo '
#alias ag='apt-get'
alias ..='cd ..'
alias ...='cd ../..'
alias gopen='gnome-open'
alias dirs="ls -1d */"
alias files="ls -p | grep -v /"
alias ll='ls -alF'
alias la='ls -AF'
alias l='ls -l'
alias cl='clear'
alias agrep='la | grep'
alias mux='tmuxinator'
alias mattermost='~/Apps/mattermost-desktop-linux-x64/Mattermost &'
alias rof='rspec --only-failures'
alias sure='./bin/sure'
alias day='sh ~/Share/base16-shell/scripts/base16-solarized-light.sh'
alias night='sh ~/Share/base16-shell/scripts/base16-tomorrow-night.sh'


# Create function which easily changes symbolic link to needed version
# sudo ln -sf /opt/phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs
