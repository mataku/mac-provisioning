#!/bin/sh
sudo xcodebuild -license
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew doctor
brew install ansible git
git clone https://github.com/rhythnn/mac-ansible
echo 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"' >> ~/.bash_profile
source ~/.bash_profile
ansible-playbook -i hosts -vv main.yml
