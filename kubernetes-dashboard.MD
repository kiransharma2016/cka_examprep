#### token generation 
kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep kubernetes-dashboard | awk '{print $1}')


#### print token
 token=`kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep kubernetes-dashboard | awk '{print $1}') |grep -i token |awk '{print $2}'`
 
 ## the token var has the value of the token
 
#### ---------------------------

1. Install webui with 3 different cni 
	- calico worked 
	- flannel worked  
 - WeaveNet
 
it works wtih Calico but couldnot get it working with flannel. Please  
figure out what are the differences they need to run and conditions?

what are the components  eg secret, configmap, etc in each case.

 
what does it mean by L2 and L3 network?


2. Network policy 

https://banzaicloud.com/blog/network-policy/


3. Tentativ time: 1 hours. 

Does it impact dashboard by network Policy? 


4. References: 
4.1. https://chrislovecnm.com/kubernetes/cni/choosing-a-cni-provider/ \
4.2. https://itnext.io/benchmark-results-of-kubernetes-network-plugins-cni-over-10gbit-s-network-updated-april-2019-4a9886efe9c4 \
4.3. Scrip to geneate token
kubectl -n kubernetes-dashboarddescribe secret $(kubectl -n kubernetes-dashboardget secret | awk '/^deployment-controller-token-/{print $1}') | awk '$1=="token:"{print $2}' \
4.4. https://docs.bitnami.com/bch/infrastructure/kubernetes-sandbox/configuration/add-users/ \
4.5. https://stackoverflow.com/questions/46664104/how-to-sign-in-kubernetes-dashboard \
4.6 https://stackoverflow.com/questions/46664104/how-to-sign-in-kubernetes-dashboard
