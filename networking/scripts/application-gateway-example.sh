# Application Gateway script

# For Reference, create a virtual subnet + subnet
az network vnet create \
  --resource-group <resource-group> \
  --name <vnet-name> \
  --address-prefix 10.0.0.0/16 \
  --subnet-name <subnet-name> \
  --subnet-prefix 10.0.1.0/24
  
# Create Virtual Machines (Not shown here)
# Create App Service (Not shown here)

