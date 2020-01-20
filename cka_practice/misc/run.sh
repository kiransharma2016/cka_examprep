#!/bin/bash
ansible-playbook  -i inventory.ini  ex10.yaml -k

#ansible-playbook -c local -i 'localhost,' ex10.yaml
