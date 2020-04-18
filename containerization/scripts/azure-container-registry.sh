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

# # use cli to upload Docker file and other files that make up your image, then build
az acr build --file Dockerfile --registry myregistry --image myimage .

# create an ACR Task to build image every time source code is updated (github version)
az acr task create \  
--registry <container_registry_name> \  
--name buildwebapp \  
--image webimage \  
--context https://github.com/MicrosoftDocs/mslearn-deploy-run-container-app-service.git \  
--branch master \  
--file Dockerfile \  
--git-access-token <access_token>
