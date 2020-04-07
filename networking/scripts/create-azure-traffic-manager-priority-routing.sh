# Step 1: Create Azure Traffic Manager Profile
az network traffic-manager profile create \
    --resource-group <resource-group>  \
    --name <traffic-manager-name-routetype> \
    --routing-method Priority \
    --unique-dns-name <unique-traffic-manager-address-prefix> #(unique.trafficmanager.net)
    
    
# Step 2: Assign Endpoints to traffic-manager
az network traffic-manager endpoint create \
    --resource-group <resource-group> \
    --profile-name <traffic-manager-name-routetype> \
    --name "Primary-WestUS" \
    --type azureEndpoints \
    --priority 1 \
    --target-resource-id <west-service-pip-id>

az network traffic-manager endpoint create \
    --resource-group <resource-group> \
    --profile-name <traffic-manager-name-routetype>  \
    --name "Failover-EastAsia" \
    --type azureEndpoints \
    --priority 2 \
    --target-resource-id <west-service-pip-id>

