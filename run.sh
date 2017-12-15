#!/bin/bash

set -e

if [ ! -d ~/.personal_provisioning/roles ]; then
    echo 'Cloning roles'
    git clone git@github.com:personal-provisioning/roles.git ~/.personal_provisioning/roles
else
    echo "Updating roles"
    CURRENT_DIR=$(pwd)
    cd ~/.personal_provisioning/roles && git pull --rebase && cd $CURRENT_DIR
fi

echo 'Installing XCode CLI Tools'
xcode-select --install || echo 'XCode CLI Tools are already installed'

which -s brew


if which -s brew
then
    echo 'Updating Homebrew'
    brew update --all && brew upgrade && brew cleanup
else
    echo 'Installing Homebrew'
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo 'Installing Ansible'
brew install ansible


echo 'Running Ansible'

ansible-playbook -i "localhost," -c local base.yml

