# Network Security Group  

#Step 1: Create a VNET (with a Subnet)
az network vnet create \
    --resource-group <resource-group> \
    --name <vnet-name> \
    --address-prefix 10.0.0.0/16 \
    --subnet-name <subnet1-name> \
    --subnet-prefix 10.0.0.0/24

#Step 2: Create second Subnet in same vnet
az network vnet subnet create \
    --resource-group <resource-group> \
    --vnet-name <vnet-name> \
    --address-prefix 10.0.1.0/24 \
    --name <subnet2-name>
    
#Step 3: Create Network Security Group
az network nsg create \
    --resource-group <resource-group> \
    --name <network-security-group-name>
    
#Step X: Add a resource that has a Network Interface (VM with nic, for example) to Network Security Group
# (Not Shown here)
# Couldnt we just attach the NSG to Subnet?
    
#Step 4: Create a Network Security Group Rule
#(This example is an SSH inbound allow rule that would be handy for VMs)





    
