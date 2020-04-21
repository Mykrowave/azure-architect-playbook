# Create Kubernetes Cluster
az aks create \  
--resource-group myResourceGroup \  
--name myAKSCluster \  
--node-count 1 \  
--enable-addons monitoring \  
--generate-ssh-keys


# Install Kubectl
az aks install-cli

# Configure Kubectrl to connect to your AKS cluster
az aks get-credentials \  
--resource-group myResourceGroup \  
--name myAKSCluster

# + Verify
kubectl get nodes

# Deploy 
kubectl apply -f azure-vote.yaml

# Test Application 
kubectl get service azure-vote-front --watch
