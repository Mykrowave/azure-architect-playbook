# Create Key Vault
az keyvault create \
    --resource-group learn-7872cb6a-4291-4ffb-8ba3-29fb205fdf7e \
    --location centralus \
    --name <your-unique-vault-name>
    
    
#Add Secret
az keyvault secret set \
    --name SecretPassword \
    --value reindeer_flotilla \
    --vault-name <your-unique-vault-name>
    
# Add Managed Identity to app service    
az webapp identity assign \
    --resource-group learn-7872cb6a-4291-4ffb-8ba3-29fb205fdf7e \
    --name <your-unique-app-name>
