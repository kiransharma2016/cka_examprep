#### deleting resources from kubernetes-dashboard
kubectl get secret,sa,role,rolebinding,services,deployments --namespace=kube-system | grep dashboard
