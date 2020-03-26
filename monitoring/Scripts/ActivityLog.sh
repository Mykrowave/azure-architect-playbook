# Azure CLI Activity Log Scripts

# az monitor activity-log

# View all available options
az monitor activity-log list -h

# Get log entries from a specific resource group
az monitor activity-log list --resource-group <group name>

# Get log entries with a specific caller
az monitor activity-log list --caller myname@company.com

# Get logs by caller on a resource type, within a date range
az monitor activity-log list --resource-provider Microsoft.Web \
    --caller myname@company.com \
    --start-time 2016-03-08T00:00:00Z \
    --end-time 2016-03-16T00:00:00Z

