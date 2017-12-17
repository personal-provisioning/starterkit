# Personal Provisioning Starter Kit

Basic starter kit to create your own provisioning

## Quick start

1. Setup the directory strucutre: `mkdir -p ~/.personal_provisioning`
2. Clone this repo `git clone https://github.com/personal-provisioning/starterkit.git ~/.personal_provisioning/config`
3. Delete the git folder `rm -rf .git/`
4. Init git again `git init`
5. Have a look at `base.yml` and adjust it to your needs
6. Start the provisioning by running `./run.sh`

## How does this work?

`run.sh` will install dependencies such as Ansible and pull our generic
roles.

