#This repo will have materials for cka test but it will be useful for practiioners as well. 

#### This tutorials will start with short history of containers,  and docker, docker compose and kubernetes.  Then we will work on docker little bit as much it needed for kubernetes, look at an example of docker-compose, then jump into kubernetes. 


History of containers
https://blog.aquasec.com/a-brief-history-of-containers-from-1970s-chroot-to-docker-2016


#### setting up kubernetes cluster
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

## Resources

#### 1. History and evolution Resources
#### coreOS rkt history and development 
https://coreos.com/blog/rkt-hits-1-0.html

2. Resources for cka and improving professional experiences

#### cka_examprep
#### playbook to isnstall kuberenetes
https://medium.com/faun/how-to-create-your-own-kubernetes-cluster-using-ansible-7c6b5c031a5d 
#### playbook to configure kubernetes cluster
https://github.com/ctienshi/kubernetes-ansible.git

tcp dump
https://www.linuxtechi.com/capture-analyze-packets-tcpdump-command-linux/


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
