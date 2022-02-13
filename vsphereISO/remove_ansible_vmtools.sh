#!/bin/bash

source /home/deployer/ansible/bin/activate

cd /home/deployer/winrm

ansible-playbook -i hosts_2012 remove_vmtools.yml -vvvv

deactivate
