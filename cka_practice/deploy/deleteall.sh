kubectl get secret,sa,role,rolebinding,services,deployments  --all-namespaces |grep dashboard |awk '{print $1" "$2}'|while read ns ob
do
kubectl delete $ob -n ns
done

