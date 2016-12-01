#!/bin/bash

set -e

mkdir -p ~/.personal_provisioning
git clone git@github.com:personal-provisioning/roles.git ~/.personal_provisioning/roles

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor

# Install ansible
brew install ansible

touch setup_done
