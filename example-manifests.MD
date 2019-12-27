#### 1. controlling resources quota

apiVersion: v1
kind: ResourceQota
metadata:
  name: storage-consumption
spec:
   hard: 
     persistentvolumeclaims:"2" # node 1
     request.storage: "10Gi" #
    




Note:
1. The total number of persistent volume claims that can exist in the namespace.
2. Across all persistent volume claims, the sum of storage requests cannot exceed this value.
