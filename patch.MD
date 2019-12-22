#### one liner for patching
ubectl patch svc kubernetes-dashboard --type='json' -p '[{"op":"replace","path":"/spec/type","value":"NodePort"}]'
#### pathing creating yaml file


# pathching to kubernetes-dashboard  services deployed in  kubernetes-dashboard namespaces.

kubectl patch svc kubernetes-dashboard -n kubernetes-dashboard --type='json' -p '[{"op":"replace","path":"/spec/type","value":"NodePort"}]'


#Alternatively, we can download the YAML for any  given service and make changes and redeploy

kubectl -n kubernetes-dashboard get service kubernetes-dashboard -o yaml > kubernetes-dashboard-svc.yaml

# make the necessary change using sed 

sed -i 's/ClusterIP/NodePort/' kube-dash-svc.yaml kubernetes-dashboard-svc.yaml

# delete existing services

kubectl delete svc kubernetes-dashboard -n kubernetes-dashboard

# now create kubernetes-dashboard services wtih new yaml 

kubectl create -f kubernetes-dashboard-svc.yaml

