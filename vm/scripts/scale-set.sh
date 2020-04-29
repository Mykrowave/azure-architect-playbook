# Create resource group
az group create \
  --location westus \
  --name scalesetrg

# Dont forget to set up a load balancer?
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
  
# Manually scale capacity 
az vmss scale \
    --name MyVMScaleSet \
    --resource-group MyResourceGroup \
    --new-capacity 6
    
# query Upgrade Policy
az vmss show \
    --name webServerScaleSet \
    --resource-group scalesetrg \
    --query upgradePolicy.mode

# run set update command
az vmss extension set \
    --publisher Microsoft.Azure.Extensions \
    --version 2.0 \
    --name CustomScript \
    --vmss-name webServerScaleSet \
    --resource-group scalesetrg \
    --settings "{\"commandToExecute\": \"echo This is the updated app installed on the Virtual Machine Scale Set ! > /var/www/html/index.html\"}"


# Get Public IP Address
az network public-ip show \
    --name webServerScaleSetLBPublicIP \
    --resource-group scalesetrg \
    --output tsv \
    --query ipAddress
  



  
  
