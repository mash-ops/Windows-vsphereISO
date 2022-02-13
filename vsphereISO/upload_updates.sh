#!/bin/bash

cd /build/scripts/manjesh/vsphereISO/Winupdate2016

printf "starting http server to copy the offline windows update to the build VM \n"
printf "win_copy module, takes a long time to copy, hence this workaround \n"
printf "which reduced the time for 3+ Gig (as of Jul 2020) to less than 2min to copy to build VM - Manjesh \n\n"

python -m SimpleHTTPServer &

source /home/deployer/ansible/bin/activate

cd /home/deployer/winrm

ansible-playbook -i hosts wincopy.yml -vv

deactivate

printf "Stopping the workaround http server \n\n"
kill -9 `ps -ef|grep SimpleHTTPServer|grep -v color|awk '{print $2}'` >/dev/null 2>&1

