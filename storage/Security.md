# Security  


## Shared Access Signatures  

- User Delegation SAS is signed with a user delegation key created using AD credentials.  
- Service and Account SAS are signed with the Storage Account Key  

### Common Cases for SAS  
- When a user reads and writes their own data to your storage account  
- Copying Blobs cross accounts  

### Notes for SAS  
If a SAS is leaked, it can be used by anyone  
If a SAS is provided to a client application and expires, the application's functionality might be hindered  
Use a Shared Access Policy so you can revoke the policy and not need to cycle the Account Key.  

### HelpFul Resources  
- Generate SAS Tokens https://docs.microsoft.com/en-us/rest/api/eventhub/generate-sas-token





