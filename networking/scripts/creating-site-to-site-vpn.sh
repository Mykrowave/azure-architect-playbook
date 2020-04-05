# Step 1: Create the Required VNET or use existing
az network vnet create \
    --resource-group <resource-group> \
    --name <vnet-name> \
    --address-prefix 10.0.0.0/16 \
    --subnet-name <subnet-name> \
    --subnet-prefix 10.0.0.0/24  

# Step 2: Create a GateWay Subnet
az network vnet subnet create \
    --resource-group <resource-group> \
    --vnet-name <vnet-name> \
    --address-prefix 10.0.255.0/27 \
    --name <gateway-subnet-name>

# Step 3: Create Local NetWork Gateway (to other site)
az network local-gateway create \
    --resource-group <resource-group> \
    --gateway-ip-address <othersite-public-ipaddress> \
    --name <local-gateway-name> \
    --local-address-prefixes <othersite-cidr-block-of-VPN-address-space>  

# Verify VNET  
az network vnet list --output table
# Verify Local-GateWay
az network local-gateway list \
    --resource-group <resource-group> \
    --output table

# step 4: Create Public IP Address
az network public-ip create \
    --resource-group <resource-group> \
    --name <ip-address-name> \
    --allocation-method Dynamic
    
# Step 5: Create Virtual Network Gateway
az network vnet-gateway create \
    --resource-group <resource-group> \
    --name <virtual-network-gateway-name> \
    --public-ip-address <ip-address-name> \
    --vnet <vnet-name> \
    --gateway-type Vpn \
    --vpn-type RouteBased \
    --sku VpnGw1 \
    --no-wait
    
# Pause if using --nowait
# Verify vnetgateway
watch -d -n 5 az network vnet-gateway list \
    --resource-group <resource-group> \
    --output table

# Step 6: Create the Connection  
az network vpn-connection create \
    --resource-group <resource-group> \
    --name <connection-name> \
    --vnet-gateway1 <virtual-network-gateway-name> \
    --shared-key <shared-key-text> \
    --local-gateway2 <local-gateway-name>
   
## Step LAST : Remember to set up on prem  Public IP Address and Virtual Private Network

# Verify Connection
az network vpn-connection show \
    --resource-group <resource-group> \
    --name <connection-name>  \
    --output table \
    --query '{Name:name,ConnectionStatus:connectionStatus}'
