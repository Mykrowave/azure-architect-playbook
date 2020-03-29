# Azure Storage  

## Storage Types
1) **Blobs (legacy)**  
Files and Documents  
2) **File**  
Files and Documents and supports the SMB (Server Message Block) which is Network File Sharing. Can be used like a drive across VM's  
3) **Queues**    
Storage and retrieval of messages.  Supports an Event Driven Architecture for an application  
4) **Tables**    
Structured Data (Non-Relational)  
5) **Disks**   
Stores Virtual Machine Storage Disks that are available to the IaaS VM's from Azure.  

## Redundancy  
1) LRS - Stored on 3 different Racks in same DataCenter  
2) ZRS - Stored on 3 different racks, but each rack is in a separate zone (availability zone)  
3) GRS - This is basically LRS in two Azure Regions. The secondary region keeps a synced version  
4) GZRS - ZRS with LRS in secondary region  
5) RA-GRS & RA-GZRS - Adds a readonly Region Based synced set to make it so this data is always readable.  Could be used to optimize performance OR provide an automatic failover  

## Transfer Options  
- Azure Storage Explorer  
- AzCopy utility  
- client library  
- Azure POrtal  
- PowerShell / azure cli  
- Azure Data Box {Ship physical devices, Gateway lets install agent locally}

## Notes  
- General Purpose V2 covers most* scenarios  
- General Purpose V1 (legacy) is older but other factors surrounding the platform solution might restrict you to using this tier. Look at Rest APIs used and Deployment Type.  If SDK < 4.x or Classic Deployment, you'll need GPV1.  
- Block Blob is a premium type that is good for frequent data transformations.  Block and Append Blobs Only  
- File Storage offers IOPS Bursting Feature.  This allows the account to build of credits overtime while not at high usage.  Helps with peaks  

## Programmatic Access  
REST APIs, SDKs, PowerShell, Azure CLI, and Azure Storage Explorer (free) Tool  

