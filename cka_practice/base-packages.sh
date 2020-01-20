#!/bin/bash

sudo yum -y update
sudo yum -y install wget git net-tools bind-utils yum-utils iptables-services bridge-utils bash-completion kexec-tools sos psacct tmux
sudo yum -y install pyOpenSSL
# sudo reboot


