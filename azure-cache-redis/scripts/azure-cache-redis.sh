# Azure Cache Redis

REDIS_NAME=mep-practice-redis

az redis create \
    --name "$REDIS_NAME" \
    --resource-group learn-9923926d-eaf8-411f-b7d6-f002650b4987 \
    --location eastus \
    --vm-size C0 \
    --sku Basic
    

