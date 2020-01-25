#### init with flannel
 kubeadm init --pod-network-cidr=10.244.0.0/16
 
 #### you can generate join token afterward with this command
 kubeadm token create --print-join-command
 
