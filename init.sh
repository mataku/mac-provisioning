#!/bin/sh
#osascript -e 'display notification "enter your password!" with title "Xcode license requires"'
#sudo xcodebuild -license
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git ansible
echo 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"' >> ~/.bash_profile
source ~/.bash_profile
ansible-playbook -i hosts -vv main.yml
