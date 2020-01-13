#### Token generation 
kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep kubernetes-dashboard | awk '{print $1}')


#### Print token
 token=`kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep kubernetes-dashboard | awk '{print $1}') |grep -i token |awk '{print $2}'`
 
 ## Note: The token var has the value of the token
 
#### assignment for kubernetes-dashboard

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


geneating ssl for dashboard

https://github.com/kubernetes/dashboard/blob/master/docs/user/certificate-management.md#public-trusted-certificate-authority


#### 3. References: 

3.1. https://chrislovecnm.com/kubernetes/cni/choosing-a-cni-provider/ \
3.2. https://itnext.io/benchmark-results-of-kubernetes-network-plugins-cni-over-10gbit-s-network-updated-april-2019-4a9886efe9c4 \
3.3. Scrip to geneate token
kubectl -n kubernetes-dashboarddescribe secret $(kubectl -n kubernetes-dashboardget secret | awk '/^deployment-controller-token-/{print $1}') | awk '$1=="token:"{print $2}' \
3.4. https://docs.bitnami.com/bch/infrastructure/kubernetes-sandbox/configuration/add-users/ \
3.5. https://stackoverflow.com/questions/46664104/how-to-sign-in-kubernetes-dashboard \
3.6 https://stackoverflow.com/questions/46664104/how-to-sign-in-kubernetes-dashboard
