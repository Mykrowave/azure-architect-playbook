# Virtual Service Endpoint
# For this example we'll use Azure Storage as the Service we are extending


# Step 1: Create an OutBound Rule on the Network Security Group (uses Azure Service Tags)
# to allow access to Storage
az network nsg rule create \
    --resource-group $rg \
    --nsg-name <network-security-group name> \
    --name Allow_Storage \
    --priority 190 \
    --direction Outbound \
    --source-address-prefixes "VirtualNetwork" \
    --source-port-ranges '*' \
    --destination-address-prefixes "Storage" \
    --destination-port-ranges '*' \
    --access Allow \
    --protocol '*' \
    --description "Allow access to Azure Storage"
    
# Step X: Create Storage resources (not shown here) 
# Variables will be <storage-account>, <storage-key>

# Step 2: Allow Subnet access to Microsoft.Storage
az network vnet subnet update \
    --vnet-name <vnet-name> \
    --resource-group <resource-group> \
    --name <subnet-name> \
    --service-endpoints Microsoft.Storage

# Step 3: Deny Access to the Storage Account (at storage account level)
az storage account update \
    --resource-group <resource-group> \
    --name <storage-account> \
    --default-action Deny
    
# Step 4: Restrict acess to only allow from subnet
az storage account network-rule add \
    --resource-group <resource-group> \
    --account-name <storage-account> \
    --vnet <vnet-name> \
    --subnet <subnet-name>
    






