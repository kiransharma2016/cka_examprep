#!/bin/bash
ansible-playbook  -i inventory.ini  ex10.yaml -k
# running playbook in local 

ansible-playbook -c local -i 'localhost,' swap.yaml 
