!#/bin/bash

echo 'y'|kubeadm reset 

# 
echo " deleting old directories"
rm -rf $HOME/.kube/*
rm -rf /var/lib/kubelet
rm -rf /etc/kubernetes

iptables -F && iptables -t nat -F && iptables -t mangle -F && iptables -X
