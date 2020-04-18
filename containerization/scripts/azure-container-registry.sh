# Create Azure Container Registry

# Create a Registry
az acr create \  
--resource-group learn-deploy-acr-rg \  
--name $ACR_NAME --sku Premium \  
--admin-enabled true

# replicate a registry
az acr replication create --registry $ACR_NAME --location japaneast

# review all container image replicas
az acr replication list --registry $ACR_NAME --output table
