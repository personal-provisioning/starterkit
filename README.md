# Personal Provisioning Starter Kit

Basic starter kit to create your own provisioning

## Quick start

1. Clone this repo `git clone https://github.com/personal-provisioning/starterkit.git ~/.personal_provisioning/playbook`
2. Delete the git folder `rm -rf .git/`
3. Init git again `git init`
4. Run `setup.sh`
5. Have a look at `base.yml` and adjust it to your needs
6. Start the provisioning by running `ansible-playbook -i inventory base.yml` 

## How does this work?

`setup.sh` will create a few folders, install Ansible and pull our generic
roles.
