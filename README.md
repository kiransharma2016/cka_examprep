#This repo will have materials for cka test but it will be useful for practiioners as well. 

#### 1. Introduction 
This tutorials will start with short history of containers, docker, and kubernetes. Then we will work on docker as it needed for kubernetes, then jump into kubernetes. As an example of progressing from single container ( docker) to multi container app, we will also look at docker-compose very briefly. 

#### 2. History of and volution of containers
https://blog.aquasec.com/a-brief-history-of-containers-from-1970s-chroot-to-docker-2016


#### 3. Docker example 


#### 4. setting up kubernetes cluster
1. introduction to containers
2. introduction to Docker 
3. Introduction to kubernetes
4. setting up kubernetes cluster

---
     1. preparing machines
     2. instaling prerequisite
     3. instaling docker 
     4. installing kubernetes 
     5. initialiasing cluster
     6. add nodes
     7. deploy cni 
     8. validate the cluster is funcitioninig 
 ---
5. Deploy Application 
6. creating k8s objects eg daemonset, pod, etc
7. Applying ssl 
8. Managing Logs
9. Monitoring 
10. Cluster Maintenance


Note: I will be using docker as container runtime. Now we can use other containter runtime as well but I am going with docker. 

## ome useful kubectl commands 
===========================================================================================================


#### Node related commands 
kubectl get nodes                       	----	lists all the nodes in the cluster


Result

NAME      STATUS   ROLES    AGE   VERSION \
kmaster   Ready    master   28d   v1.17.0 \
node1     Ready    <none>   28d   v1.16.3 \
node2     Ready    <none>   28d   v1.16.3
	

#### Namespace commands 
kubectl get namespaces

NAME                   STATUS   AGE \
default                Active   28d \
kube-node-lease        Active   28d
kube-public            Active   28d
kube-system            Active   28d
kubernetes-dashboard   Active   21d
myday2                 Active   13d
---
	

####Pod related commands

1. Creating a pod from a manifest file \
kubectl create -f ngix-example-deployment.yaml \
we will get a output like this if successful \
deployment.apps/nginx-deployment created

2. Now check the pod 
kubectl get pod
---
NAME                                READY   STATUS              RESTARTS   AGE
mydb-59cdfd5c8f-tzjxj               1/1     Running             2          12d
nginx-deployment-54f57cf6bf-7fnjf   0/1     ContainerCreating   0          10s
nginx-deployment-54f57cf6bf-f6dqn   0/1     ContainerCreating   0          10s
nginx-deployment-54f57cf6bf-sjkp6   0/1     ContainerCreating   0          10s

Note: mydb-59cdfd5c8f-tzjxj already exist before we created the nginx pod
---
kubectl get nodes --all-namespaces 		----	lists pods in all namespaces
kubectl get pods --all-namespaces -o wide	----	list alls the pods in the cluster in detail
kubectl describe pod nginx-example		----	all detail about the pod nginx-example
# Label a pod
 kubectl label pods labelex owner=michael
# Deleting the pod nginx-example 
kubectl delete pod nginx-example 			----	deletes the pod nginx-example





## Resources

#### 1. History and evolution Resources
#### coreOS rkt history and development 
https://coreos.com/blog/rkt-hits-1-0.html

#### 2. Resources for cka and improving professional experiences

#### ------- greping log based on timestamp
grep -E '2019-11-14T09:1[4-6]' /var/log/syslog

good url for ansible playbook for kubernetes \
https://www.digitalocean.com/community/tutorials/how-to-create-a-kubernetes-cluster-using-kubeadm-on-centos-7

k8s operator
https://itnext.io/a-practical-kubernetes-operator-using-ansible-an-example-d3a9d3674d5b

https://www.techrepublic.com/article/how-to-install-a-kubernetes-cluster-on-centos-7/

how to install particular versio nof docker
https://medium.com/@gauravsj9/how-to-install-specific-docker-version-on-linux-machine-d0ec2d4095

many useful article on k8s
https://8gwifi.org/docs/prometheus-dashboard.jsp

good blog for cicd
https://devops4solutions.com/category/ci-cd-workflows-demo/


#### 3. Utilities 
#### playbook to isnstall kuberenetes
https://medium.com/faun/how-to-create-your-own-kubernetes-cluster-using-ansible-7c6b5c031a5d 
#### playbook to configure kubernetes cluster
https://github.com/ctienshi/kubernetes-ansible.git

tcp dump
https://www.linuxtechi.com/capture-analyze-packets-tcpdump-command-linux/
