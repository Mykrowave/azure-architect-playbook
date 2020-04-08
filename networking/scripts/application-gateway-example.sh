# Application Gateway script

# For Reference, create a virtual subnet + subnet
az network vnet create \
  --resource-group <resource-group> \
  --name <vnet-name> \
  --address-prefix 10.0.0.0/16 \
  --subnet-name <subnet-name> \
  --subnet-prefix 10.0.1.0/24
  
# Create Virtual Machines (Not shown here)
# Create App Service (Not shown here)

# Create Public Ip Address for Application GateWay
az network public-ip create \
  --resource-group <resource-group> \
  --name appGatewayPublicIp \
  --sku Standard \
  --dns-name exampleapp${RANDOM}   #(RANDOM.??????)

# Create Application Gateway
az network application-gateway create \
--resource-group <resource-group> \
--name vehicleAppGateway \
--sku WAF_v2 \
--capacity 2 \
--vnet-name <vnet-name> \
--subnet <subnet-name> \
--public-ip-address appGatewayPublicIp \
--http-settings-protocol Http \
--http-settings-port 8080 \
--frontend-port 8080

# Create BackEnd Pools for Web Servers mentioned at top
az network application-gateway address-pool create \
  --gateway-name vehicleAppGateway \
  --resource-group <resource-group> \
  --name vmPool \
  --servers $WEBSERVER1IP $WEBSERVER2IP   #(listed as examples - these are 2 VMs)


# Create a FrontEnd Port for 80
az network application-gateway frontend-port create \
    --resource-group <resource-group> \
    --gateway-name vehicleAppGateway \
    --name port80 \
    --port 80

# Create the Listener on Port 80
az network application-gateway http-listener create \
    --resource-group <resource-group> \
    --name vehicleListener \
    --frontend-port port80 \
    --gateway-name vehicleAppGateway

# Create Health Probe
az network application-gateway probe create \
    --resource-group <resource-group> \
    --gateway-name vehicleAppGateway \
    --name customProbe \
    --path / \
    --interval 15 \
    --threshold 3 \
    --timeout 10 \
    --protocol Http \
    --host-name-from-http-settings true

# http settings for probe
az network application-gateway http-settings update \
    --resource-group <resource-group> \
    --gateway-name vehicleAppGateway \
    --name appGatewayBackendHttpSettings \
    --host-name-from-backend-pool true \
    --port 80 \
    --probe customProbe
    
# Path Based Routing
az network application-gateway url-path-map create \
    --resource-group $rg \
    --gateway-name vehicleAppGateway \
    --name urlPathMap \
    --paths /VehicleRegistration/* \
    --http-settings appGatewayBackendHttpSettings \
    --address-pool vmPool
    
