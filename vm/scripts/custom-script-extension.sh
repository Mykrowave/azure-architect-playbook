# configure IIS powershell command download and run on vm
az vm extension set \
  --resource-group $RESOURCEGROUP \
  --vm-name SimpleWinVM \
  --name CustomScriptExtension \
  --publisher Microsoft.Compute \
  --version 1.9 \
  --settings '{"fileUris":["https://raw.githubusercontent.com/MicrosoftDocs/mslearn-welcome-to-azure/master/configure-iis.ps1"]}' \
  --protected-settings '{"commandToExecute": "powershell -ExecutionPolicy Unrestricted -File configure-iis.ps1"}'
