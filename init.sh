#!/bin/sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install ansible
echo 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"' >> ~/.bash_profile
source ~/.bash_profile
ansible-playbook -i hosts -vv main.yml --extra-vars "CI != true"
