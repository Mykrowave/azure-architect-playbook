# Create a KeyVault
az keyvault create \
    --name "myKeyVault" \
    --resource-group <resource-group> \
    --location <location> \
    --enabled-for-disk-encryption True
    
# Enable Encryption
az vm encryption enable \
    --resource-group <resource-group> \
    --name <vm-name> \
    --disk-encryption-keyvault <keyvault-name> \
    --volume-type [all | os | data] \
    
    
# Check if Encrypted
az vm encryption show --resource-group <resource-group> --name <vm-name>

# Reverse Encryption setting
az vm encryption disable --resource-group <resource-group> --name <vm-name>
