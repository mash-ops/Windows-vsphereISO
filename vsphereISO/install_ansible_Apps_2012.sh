#!/bin/bash

source /home/deployer/ansible/bin/activate

cd /home/deployer/winrm

ansible-playbook -i hosts_2012 app_install.yml -vvvv

deactivate
