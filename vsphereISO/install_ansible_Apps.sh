#!/bin/bash

source /home/deployer/ansible/bin/activate

cd /home/deployer/winrm

#ansible-playbook -i hosts app_install.yml -vvvv
ansible-playbook -i $1 app_install.yml -vvvv

deactivate
