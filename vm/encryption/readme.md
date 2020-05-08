# Encrypting

- Asymmetirc: Different keys for encrypting and decrypting
- Symmetric: Same Key
- On some Linux machines on the Data Disks can be encrypted
- On Windows, the drive must be NTFS format
- Take a snapshot or a backup before encrypting



## Azure VM Encryption Techonologies

1) Storage Service Encryption (SSE)    
  - Encrypted at rest on physical machine's disk  
2) Azure Disk Encrytption(ADE)  
  - Encrypts VHD: Disk image is only accessible by virtual machine that owns it
  
- Possible to use both at the same time
- Storage Service Encryption is on by default and you cant turn it off

