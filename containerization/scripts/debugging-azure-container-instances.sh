# attach a listener (useful to watch startup)
az container attach \
  --resource-group learn-deploy-aci-rg \
  --name mycontainer
  
# run command on container (after this you are working in container)
az container exec \
  --resource-group learn-deploy-aci-rg \
  --name mycontainer \
  --exec-command /bin/sh
  
# monitoring cpu usage with a command
az monitor metrics list \
  --resource $CONTAINER_ID \
  --metric CPUUsage \
  --output table
  
# monitoring memory 
az monitor metrics list \
  --resource $CONTAINER_ID \
  --metric MemoryUsage \
  --output table


  

