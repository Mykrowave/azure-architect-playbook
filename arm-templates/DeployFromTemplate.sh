# Deploy From ARM Template using Azure CLI

# validate deploymnet
az deployment group validate \
  --resource-group $RESOURCEGROUP \
  --template-uri "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-vm-simple-windows/azuredeploy.json" \
  --parameters adminUsername=$USERNAME \
  --parameters adminPassword=$PASSWORD \
  --parameters dnsLabelPrefix=$DNS_LABEL_PREFIX
  --parameters location=$LOCATION
  
  
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
  
# Examine Deployment Operations
az deployment group operation list \
  --resource-group examplegroup \
  --name exampledeployment
  
# Examine Request Content
az deployment group operation list \
  --name exampledeployment \
  -g examplegroup \
  --query [].properties.request

# Examine Response Content
az deployment group operation list \
  --name exampledeployment \
  -g examplegroup \
  --query [].properties.response

# Get Protected Template in Storage
expiretime=$(date -u -d '30 minutes' +%Y-%m-%dT%H:%MZ)
connection=$(az storage account show-connection-string \
    --resource-group ExampleGroup \
    --name {your-unique-name} \
    --query connectionString)
token=$(az storage blob generate-sas \
    --container-name templates \
    --name azuredeploy.json \
    --expiry $expiretime \
    --permissions r \
    --output tsv \
    --connection-string $connection)
url=$(az storage blob url \
    --container-name templates \
    --name azuredeploy.json \
    --output tsv \
    --connection-string $connection)
az deployment group create \
  --resource-group ExampleGroup \
  --template-uri $url?$token
