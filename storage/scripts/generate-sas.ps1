# Check which Version of Az.Storage is installed
Get-Module -ListAvailable -Name Az.Storage -Refresh

# Assign the AD Account the generateUserDelgationKey Role  
New-AzRoleAssignment -SignInName <email> `
    -RoleDefinitionName "Storage Blob Data Contributor" `
    -Scope  "/subscriptions/<subscription>/resourceGroups/<resource-group>/providers/Microsoft.Storage/storageAccounts/<storage-account>"
    
# Create the SAS for a CONTAINER
$ctx = New-AzStorageContext -StorageAccountName <storage-account> -UseConnectedAccount
New-AzStorageContainerSASToken -Context $ctx `
    -Name <container> `
    -Permission racwdl `
    -ExpiryTime <date-time>
    
# Create the SAS for a BLOB
New-AzStorageBlobSASToken -Context $ctx `
    -Container <container> `
    -Blob <blob> `
    -Permission racwd `
    -ExpiryTime <date-time>
    -FullUri
