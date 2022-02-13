#!/bin/bash

sleep 1m

source /home/deployer/ansible/bin/activate

cd /home/deployer/winrm

ansible-playbook -i hosts win2012_psinstall.yml -vvvv

deactivate
