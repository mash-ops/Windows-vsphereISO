#!/bin/bash

sleep 1m

source /home/deployer/ansible/bin/activate

cd /home/deployer/winrm

ansible-playbook -i hosts win2016_2nd_update.yml -vvvv

deactivate
