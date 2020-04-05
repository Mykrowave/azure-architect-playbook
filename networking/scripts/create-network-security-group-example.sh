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
    
#Step 4: Create Network Security Group Rules
#(This example is an SSH inbound allow rule that would be handy for VMs)
az network nsg rule create \
    --resource-group <resource-group> \
    --nsg-name <network-security-group-name> \
    --name AllowSSHRule \
    --direction Inbound \
    --priority 100 \
    --source-address-prefixes '*' \
    --source-port-ranges '*' \
    --destination-address-prefixes '*' \
    --destination-port-ranges 22 \
    --access Allow \
    --protocol Tcp \
    --description "Allow inbound SSH"
    
#Step 5: Restructure to use Application Security Group
az network asg create \
    --resource-group <resource-group> \
    --name <application-security-group-name>
    
#Associate resources (network interface resources with the applicaiton security group)
#Example for VM NIC
az network nic ip-config update \
    --resource-group <resource-group> \
    --application-security-groups <application-security-group-name> \
    --name <ipconfig-name> \
    --nic-name <network-interface-card-name> \
    --vnet-name <vnet-name> \
    --subnet <subnet-name>
    
#Update the Network Security Group to use the Application Security Group we created
#(This example creates a rule to deny traffic from resources attached to Application security group to 10.0.0.4
az network nsg rule update \
    --resource-group <resource-group> \
    --nsg-name <network-security-group-name> \
    --name httpRule \
    --direction Inbound \
    --priority 150 \
    --source-address-prefixes "" \
    --source-port-ranges '*' \
    --source-asgs <application-security-group-name> \
    --destination-address-prefixes 10.0.0.4 \
    --destination-port-ranges 80 \
    --access Deny \
    --protocol Tcp \
    --description "Deny from DataServer to AppServer on port 80 using application security group"

    





    
