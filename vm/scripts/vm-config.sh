# Create a vm
az vm create \
  --resource-group $rg \
  --location westus \
  --name SampleVM \
  --image UbuntuLTS \
  --admin-username azureuser \
  --generate-ssh-keys \
  --verbose


# Don't wait in console
az vm create \
  --resource-group $rg \
  --location westus \
  --name SampleVM \
  --image UbuntuLTS \
  --admin-username azureuser \
  --generate-ssh-keys \
  --verbose
  --no-wait

# connect with ssh
ssh azureuser@<public-ip-address>


# List most popular VM images
az vm image list --output table

# List all and filter by sku
az vm image list --sku Wordpress --output table --all
az vm image list --publisher Microsoft --output table --all

# List images by location
az vm image list --location eastus --output table

# Specify a size
az vm create \
    --resource-group $rg \
    --name SampleVM2 \
    --image UbuntuLTS \
    --admin-username azureuser \
    --generate-ssh-keys \
    --verbose \
    --size "Standard_DS5_v2"
    
# Get Resize Options
az vm list-vm-resize-options \
    --resource-group $rg \
    --name SampleVM \
    --output table
    
# Resize
az vm resize \
    --resource-group $rg \
    --name SampleVM \
    --size Standard_D2s_v3
    
# Get Ip Address
az vm list-ip-addresses -n SampleVM -o table


# For Generalizing a VM
# IF on Windows you have used the windows32/sysprep tool 
# IF on Linux you have used the waagent tool
# THEN
az vm deallocate \
    --resource-group <resource group> \
    --name <virtual machine name>

az vm generalize \
    --resource-group <resource group> \
    --name <virtual machine name>
