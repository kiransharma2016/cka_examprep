# cka_examprep
## playbook to isnstall kuberenetes
https://medium.com/faun/how-to-create-your-own-kubernetes-cluster-using-ansible-7c6b5c031a5d \
git clone https://github.com/ctienshi/kubernetes-ansible

## deleting kubernetes dashboard objects

kubectl delete deployment kubernetes-dashboard --namespace=kube-system  \
kubectl delete service kubernetes-dashboard  --namespace=kube-system  \
kubectl delete role kubernetes-dashboard-minimal --namespace=kube-system  \
kubectl delete rolebinding kubernetes-dashboard-minimal --namespace=kube-system \
kubectl delete sa kubernetes-dashboard --namespace=kube-system  \
kubectl delete secret kubernetes-dashboard-certs --namespace=kube-system \
kubectl delete secret kubernetes-dashboard-key-holder --namespace=kube-system
