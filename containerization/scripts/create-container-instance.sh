# Create Container
az container create \
  --resource-group $rg \
  --name mycontainer-name \
  --image microsoft/aci-helloworld \
  --ports 80 \
  --dns-name-label $DNS_NAME_LABEL \
  --location eastus
  
# Show Container Instance
az container show \
  --resource-group $rg \
  --name mycontainer \
  --query "{FQDN:ipAddress.fqdn,ProvisioningState:provisioningState}" \
  --out table
  
# View Container Logs
az container logs \
  --resource-group $rg \
  --name mycontainer-restart-demo

