in nodeport to work, the "externalTrafficPolicy: Cluster " be setup

#### ssl 
https://kubernetes.github.io/ingress-nginx/user-guide/tls/

#### 
https://www.digitalocean.com/community/tutorials/how-to-set-up-an-nginx-ingress-with-cert-manager-on-digitalocean-kubernetes

https://www.digitalocean.com/community/tutorials/how-to-install-software-on-kubernetes-clusters-with-the-helm-package-manager

https://docs.bitnami.com/kubernetes/how-to/secure-kubernetes-services-with-ingress-tls-letsencrypt/


#### Creating Load balancer Service
In aws, kubernetes does not create load balancer automitcally. we have to create the elb and update the external ip with the ip of the elb. 

NAME         TYPE           CLUSTER-IP      EXTERNAL-IP     PORT(S)        AGE   SELECTOR
kubernetes   ClusterIP      10.96.0.1       <none>          443/TCP        17m   <none>
nginx        LoadBalancer   10.96.144.218   34.227.23.249   80:30441/TCP   15m   app=nginx

The external ip 34.227.23.249 was the ip of the elb. 


