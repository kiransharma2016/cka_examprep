# cka_examprep
## playbook to isnstall kuberenetes
https://medium.com/faun/how-to-create-your-own-kubernetes-cluster-using-ansible-7c6b5c031a5d 
#### playbook to configure kubernetes cluster
https://github.com/ctienshi/kubernetes-ansible.git

## deleting kubernetes dashboard objects

kubectl delete deployment kubernetes-dashboard --namespace=kube-system  \
kubectl delete service kubernetes-dashboard  --namespace=kube-system  \
kubectl delete role kubernetes-dashboard-minimal --namespace=kube-system  \
kubectl delete rolebinding kubernetes-dashboard-minimal --namespace=kube-system \
kubectl delete sa kubernetes-dashboard --namespace=kube-system  \
kubectl delete secret kubernetes-dashboard-certs --namespace=kube-system \
kubectl delete secret kubernetes-dashboard-key-holder --namespace=kube-system

## for namespaces kubernetes-dashboard
kubectl delete deployment kubernetes-dashboard --namespace=kubernetes-dashboard \
kubectl delete service kubernetes-dashboard --namespace=kubernetes-dashboard \
kubectl delete role kubernetes-dashboard-minimal --namespace=kubernetes-dashboard \
kubectl delete rolebinding kubernetes-dashboard-minimal --namespace=kubernetes-dashboard \
kubectl delete sa kubernetes-dashboard --namespace=kubernetes-dashboard \
kubectl delete secret kubernetes-dashboard-certs --namespace=kubernetes-dashboard \
kubectl delete secret kubernetes-dashboard-key-holder --namespace=kubernetes-dashboard 
