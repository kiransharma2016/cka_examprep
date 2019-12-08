# cka_examprep
## playbook to isnstall kuberenetes


## deleting kubernetes dashboard objects

kubectl delete deployment kubernetes-dashboard --namespace=kube-system  \
kubectl delete service kubernetes-dashboard  --namespace=kube-system  \
kubectl delete role kubernetes-dashboard-minimal --namespace=kube-system  \
kubectl delete rolebinding kubernetes-dashboard-minimal --namespace=kube-system \
kubectl delete sa kubernetes-dashboard --namespace=kube-system  \
kubectl delete secret kubernetes-dashboard-certs --namespace=kube-system \
kubectl delete secret kubernetes-dashboard-key-holder --namespace=kube-system
