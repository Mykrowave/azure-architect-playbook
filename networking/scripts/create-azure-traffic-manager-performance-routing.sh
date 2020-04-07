# Azure Traffic Manager Profile - Performance Routint
az network traffic-manager profile create \
    --resource-group <resource-group> \
    --name <traffic-manager-profile-name-routetype> \
    --routing-method Performance \
    --unique-dns-name <unique address prefix> \  # (unique.trafficmanager.net)
    --output table
  
az network traffic-manager endpoint create \
    --resource-group <resource-group> \
    --profile-name <traffic-manager-profile-name-routetype> \
    --name "WestUS" \
    --type azureEndpoints \
    --target-resource-id <west-pip-id>

az network traffic-manager endpoint create \
    --resource-group learn-7b126aac-402b-4c6f-afcc-bc70ea6c0db3 \
    --profile-name <traffic-manager-profile-name-routetype> \
    --name "EastAsia" \
    --type azureEndpoints \
    --target-resource-id <east-pip-id>
