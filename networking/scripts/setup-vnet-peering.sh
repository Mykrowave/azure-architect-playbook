# VNET Peering

# Setup 3 VNETS (for demonstration)
az network vnet create \
    --resource-group <resource-group> \
    --name <vnet1-name> \
    --address-prefix 10.1.0.0/16 \
    --subnet-name <subnet1-name> \
    --subnet-prefix 10.1.1.0/24 \
    --location northeurope

az network vnet create \
    --resource-group <resource-group> \
    --name <vnet2-name> \
    --address-prefix 10.2.0.0/16 \
    --subnet-name <subnet2-name> \
    --subnet-prefix 10.2.1.0/24 \
    --location northeurope
    
az network vnet create \
    --resource-group <resource-group> \
    --name <vnet3-name> \
    --address-prefix 10.3.0.0/16 \
    --subnet-name <subnet3-name> \
    --subnet-prefix 10.3.1.0/24 \
    --location westeurope

# Step 1: Create Peering between 1 and 2
az network vnet peering create \
    --name "<subnet1-name>-to-<subnet2-name>" \
    --remote-vnet <vnet2-name> \
    --resource-group <resource-group> \
    --vnet-name <vnet1-name> \
    --allow-vnet-access
# Step 2: Create Peering between 2 and 1
az network vnet peering create \
    --name "<subnet2-name>-to-<subnet1-name>" \
    --remote-vnet <vnet1-name> \
    --resource-group <resource-group> \
    --vnet-name <vnet2-name> \
    --allow-vnet-access

# Step 3: Create Peering between 2 and 3
az network vnet peering create \
    --name "<subnet2-name>-to-<subnet3-name>" \
    --remote-vnet <vnet3-name> \
    --resource-group <resource-group> \
    --vnet-name <vnet2-name> \
    --allow-vnet-access
    
# Step 4: Create Peering between 3 and 2
az network vnet peering create \
    --name "<subnet3-name>-to-<subnet2-name>" \
    --remote-vnet <vnet2-name> \
    --resource-group <resource-group> \
    --vnet-name <vnet3-name> \
    --allow-vnet-access
    
# You can check the routes of a network interface
az network nic show-effective-route-table \
    --resource-group <resource-group> \
    --name <network-interface-name> \
    --output table
