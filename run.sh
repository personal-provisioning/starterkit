#!/bin/bash

if [ ! -f setup_done ];
then
    bash setup.sh
fi

ansible-playbook -i inventory base.yml $1
