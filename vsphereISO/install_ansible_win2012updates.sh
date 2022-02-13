#!/bin/bash

sleep 1m

source /home/deployer/ansible/bin/activate

cd /home/deployer/winrm

ansible-playbook -i hosts_2012 win2012_update.yml -vvvvv

deactivate
