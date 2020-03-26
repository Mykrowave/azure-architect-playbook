# Deploy From ARM Template using Azure CLI

# Deploy to a resource group
az deployment group create --resource-group <resource-group-name> --template-file <path-to-template>

# Deploy to a Subscription
az deployment sub create --location <location> --template-file <path-to-template>

# Deploy to a Management Group
az deployment mg create --location <location> --template-file <path-to-template>

# Deploy to a Tenant
az deployment tenant create --location <location> --template-file <path-to-template>

# External Template
az group create --name ExampleGroup --location "Central US"
az deployment group create \
  --name ExampleDeployment \
  --resource-group ExampleGroup \
  --template-file storage.json \
  --parameters storageAccountType=Standard_GRS
  
# Inline Parameters
az deployment group create \
  --resource-group testgroup \
  --template-file demotemplate.json \
  --parameters exampleString='inline string' exampleArray='("value1", "value2")'
  
# External parameters
az deployment group create \
  --resource-group testgroup \
  --template-file demotemplate.json \
  --parameters exampleString=@stringContent.txt exampleArray=@arrayContent.json
  
# TEST Deployment
az deployment group validate \
  --resource-group ExampleGroup \
  --template-file storage.json \
  --parameters @storage.parameters.json
  
