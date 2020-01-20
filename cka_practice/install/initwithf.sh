!#/bin/bash
#
# param1. --pod-network-cird
# param2.  --apiserver-address
kubeadm init --apiserver-advertise-address=10.0.0.10  --pod-network-cidr=10.244.0.0/16

