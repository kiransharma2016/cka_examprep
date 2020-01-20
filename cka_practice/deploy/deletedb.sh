#!/bin/bash
#set -x 


ns=`kubectl get svc   --all-namespaces|grep -i kubernetes-dashboard|awk '{print $1}'|head -1`

#object=

kubectl delete deployment kubernetes-dashboard --namespace=$ns
kubectl delete service kubernetes-dashboard  --namespace=$ns
kubectl delete role kubernetes-dashboard-minimal --namespace=$ns
kubectl delete rolebinding kubernetes-dashboard-minimal --namespace=$ns
kubectl delete sa kubernetes-dashboard --namespace=$ns
kubectl delete secret kubernetes-dashboard-certs --namespace=$ns
kubectl delete secret kubernetes-dashboard-key-holder --namespace=$ns

#kubectl delete deployment dashboard-metrics-scraper --namespace=kubernetes-dashboard
