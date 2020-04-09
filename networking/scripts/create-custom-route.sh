# Custom Route

# Create Route Table
az network route-table create \
    --name publictable \
    --resource-group $rg \
    --disable-bgp-route-propagation false
    
# Create Custom Route
az network route-table route create \
    --route-table-name publictable \
    --resource-group $rg \
    --name productionsubnet \
    --address-prefix 10.0.1.0/24 \
    --next-hop-type VirtualAppliance \
    --next-hop-ip-address 10.0.2.4
    
# Creat Virtual Network
az network vnet create \
    --name vnet \
    --resource-group $rg \
    --address-prefix 10.0.0.0/16 \
    --subnet-name publicsubnet \
    --subnet-prefix 10.0.0.0/24

# Create Subnet
az network vnet subnet create \
    --name privatesubnet \
    --vnet-name vnet \
    --resource-group $rg \
    --address-prefix 10.0.1.0/24
    
# Create Subnet
az network vnet subnet create \
    --name dmzsubnet \
    --vnet-name vnet \
    --resource-group $rg \
    --address-prefix 10.0.2.0/24
    
# Attach Route Table to VNET
az network vnet subnet update \
    --name publicsubnet \
    --vnet-name vnet \
    --resource-group $rg \
    --route-table publictable
