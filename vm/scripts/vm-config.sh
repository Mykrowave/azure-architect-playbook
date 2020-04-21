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
  
  
