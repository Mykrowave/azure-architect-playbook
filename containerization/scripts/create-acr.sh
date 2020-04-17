# Create Azure Container Registry

# Create a Registry
az acr create \  
--resource-group learn-deploy-acr-rg \  
--name $ACR_NAME --sku Premium
