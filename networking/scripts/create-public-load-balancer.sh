# Public Load Balancer
# Assuming Availibility Set of VM is already Created

# Step 1: Public IP Address
az network public-ip create \
  --resource-group <resource-group> \
  --allocation-method Static \
  --name <pip-name>

# Step 2: Create Load Balancer
az network lb create \
  --resource-group <resource-group> \
  --name <loadbalancer-name> \
  --public-ip-address <pip-name> \
  --frontend-ip-name <frontend-ip-name> \
  --backend-pool-name <backend-pool-name>

# Step 3: Allow Health Check Probes
az network lb probe create \
  --resource-group <resource-group> \
  --lb-name <loadbalancer-name> \
  --name <health-probe-name> \
  --protocol tcp \
  --port 80
  
# Step 4: Setup FrontEnd Ip Load Balance Rule
az network lb rule create \
  --resource-group <resource-group> \
  --lb-name <loadbalancer-name> \
  --name httpRule \
  --protocol tcp \
  --frontend-port 80 \
  --backend-port 80 \
  --frontend-ip-name <frontend-ip-name> \
  --backend-pool-name <backend-pool-name> \
  --probe-name <health-probe-name>
  
  # Step 5: Update Network Interfaces' backendpool setting (example of nic)
  az network nic ip-config update \
  --resource-group <resource-group> \
  --nic-name <nic-name> \
  --name <ipconfigname> \
  --lb-name <loadbalancer-name> \
  --lb-address-pools <backend-pool-name>
