# Create resource group
az group create \
  --location westus \
  --name scalesetrg
  
# Create Scale Set - not included is the cloud-init.yaml file with is an init for the Linux VM
az vmss create \
  --resource-group scalesetrg \
  --name webServerScaleSet \
  --image UbuntuLTS \
  --upgrade-policy-mode automatic \
  --custom-data cloud-init.yaml \  
  --admin-username azureuser \
  --generate-ssh-keys
  
# Create load balancer proble
az network lb probe create \
  --lb-name webServerScaleSetLB \
  --resource-group scalesetrg \
  --name webServerHealth \
  --port 80 \
  --protocol Http \
  --path /

#create rule for load balancer to route FE to BEPool
az network lb rule create \
  --resource-group scalesetrg \
  --name webServerLoadBalancerRuleWeb \
  --lb-name webServerScaleSetLB \
  --probe-name webServerHealth \
  --backend-pool-name webServerScaleSetLBBEPool \
  --backend-port 80 \
  --frontend-ip-name loadBalancerFrontEnd \
  --frontend-port 80 \
  --protocol tcp
  



  
  
