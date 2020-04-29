# Create Batch Account
az batch account create \
 --name $BATCH_ACCOUNT \
 --resource-group $RESOURCE_GROUP \
 --location <choose a location from the list above>
 
# login?
az batch account login \
 --name $BATCH_ACCOUNT \
 --resource-group $RESOURCE_GROUP \
 --shared-key-auth
 
# Create
az batch pool create \
 --id mypool --vm-size Standard_A1_v2 \
 --target-dedicated-nodes 3 \
 --image canonical:ubuntuserver:16.04-LTS \
 --node-agent-sku-id "batch.node.ubuntu 16.04"
 
# Check Status
az batch pool show --pool-id mypool \
 --query "allocationState"
 
 
# Create a batch Job
az batch job create \
 --id myjob \
 --pool-id mypool
 
# Create Batch Tasks
for i in {1..10}
do
   az batch task create \
    --task-id mytask$i \
    --job-id myjob \
    --command-line "/bin/bash -c 'echo \$(printenv | grep \AZ_BATCH_TASK_ID) processed by; echo \$(printenv | grep \AZ_BATCH_NODE_ID)'"
done

# show task
az batch task show \
 --job-id myjob2 \
 --task-id mytask1
 
# DL Task
az batch task file list \
 --job-id myjob2 \
 --task-id mytask5 \
 --output table
 
 


# Delete batch job
az batch job delete --job-id myjob -y

