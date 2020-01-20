# deploy insecure dashboard
   kubectl apply -f dashboard-insecure.yml
### validate
```
  There are two things we can check in order to ensure dashboard deployment is successful. 
  1. Check deployment is running  with following commands

       kubectl get deploy -n kubernetes-dashboard
  2. Ensure that the pods are running by issue follwoing commands
       kubectl get pods -n kubernetes-dashboard

  Also check the service is running 

   kubectl get svc -n kubernetes-dashboard ( note port number ex: 30605)

```

### Accessiing the WebUI
####  type http://ip of your node :node port displayed in the display service above
      ex: http://10.0.0.114:30419/

#### 100.0.114 is ip of my master and 30419 is the service port

####    skip the login to get in  the dashboard     



#### Deploying the secuire dashboard

#### 1. Deploy the dashboad   
kubectl apply -f dashboard-secure.yml

### 2. Create Service Account & Get token to login to UI
kubectl create serviceaccount dashboard-sa

### 3. assign clsuer role to the newly created servcie account
kubectl create clusterrolebinding dashboard-admin --clusterrole=cluster-admin --serviceaccount=default:dashboard-sa


### 4. Generate tocken for login 
kubectl get secret $(kubectl get serviceaccount dashboard-sa -o jsonpath="{.secrets[0].name}") -o jsonpath="{.data.token}" | base64 --decode


#### The token looks like below, 

```
root@kube-master:~# kubectl get secret $(kubectl get serviceaccount dashboard-sa -o jsonpath="{.secrets[0].name}") -o jsonpath="{.data.token}" | base64 --decode
eyJhbGciOiJSUzI1NiIsImtpZCI6IjJBNzB4bFZDbFN1cVRkd3N4VkxSVTdmVS1ROGlyR2l5WVl4ZHZ0UVkyNHcifQ.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJkZWZhdWx0Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZWNyZXQubmFtZSI6ImRhc2hib2FyZC1zYS10b2tlbi16YjJ3cSIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VydmljZS1hY2NvdW50Lm5hbWUiOiJkYXNoYm9hcmQtc2EiLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlcnZpY2UtYWNjb3VudC51aWQiOiI2MjJkZDhhMC02ZjBlLTQyMzAtYmRmNy1iY2UzM2I1MGRmYjkiLCJzdWIiOiJzeXN0ZW06c2VydmljZWFjY291bnQ6ZGVmYXVsdDpkYXNoYm9hcmQtc2EifQ.MrkHfl7zvAT7u7xb2eCcSmJZL6ieJlO7AcK2ho_GxslAYCzLHI8jubynoBXADqhHf6H4ej4beXJNjrMTmqWdGE11reGm9WOtoYs_R4kCoAExMVNcSXqKYjfcRbRIYPh7jprVjwkW9h2lqtAW5L2w-941jshuwVN9prxD-Vx-2mNwehjSqpyw5fEjAPkh5Kn-GF7e00Ce4EPMXeUzIM28f8liZ7LY oL9sfiKXICx5Z8Z92NmOPvjnmjpR7_8hfj7BfZVcEpGnpfbYdGx2NAZJbvncY-LfZ5AEOmRUGaanl8UFCeYVI0iYhpKBrOhMM8dzH57j96GV0ER_9kdzIEypw

```

#### 5. Copy it and enter in in token field when you login 



####  Accessing the secure WebUI

####  Type http://ip of your node :node port displayed in the display service above
####  eg: http://10.0.0.114:30419/

#### 100.0.114 is ip of my master and 30419 is the service port

####    ener the token generated above 
