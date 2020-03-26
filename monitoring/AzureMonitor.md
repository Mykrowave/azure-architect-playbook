# Azure Monitor
Provides a "centralized" place to manage Metrics, Diagnostics, and Logs across all pieces of your Infrastructure.  Multiple Diagnostic settings can be applied to a single resource.  

## Resource Diagnostic Setting
Need to determine what diagnostics need to be collected AND where that data should be stored.  
Type of Platform Logs:  
1) Resource(Diagnostic) Logs - insights WITHIN an Azure Resource  
2) Activity Log - insights ABOUT what happened to an Azure Resource  
3) Azure Active Directory Log - "User" reports  

Possible Destinations:  
1) Storage Account
2) Log Analytics WorkSpaces
3) Event Hubs namespaces (for integration with 3rd party tools)  

## Activity Log  
You cannot create a diagnostic setting for Activity Log through PowerShell or Azure CLI, but you can create a Deployment ARM Template and Deploy through PowerShell or Azure CLI  


## UnOrdered Notes
Don't forget to Turn on Diagnostics.  It's not always on by default  
Will need to Setup Agent on a VM  
A Storage Account is needed $  
Maximium of 3 Diagnostic settings per resource  
This can be configured through a REST API, PowerShell, Azure CLI, ARM Template  
You can setup diagnostics to be cross subscription  
Authorization is handled through Active Directory  
Deploying ARM Templates can be done through Powershell Command and Azure CLI:  
1) PS Activity Log = New-AzDeployment
2) Azure cli Activity Log = az deployment create,
3) PS Resource Log = New-AzResourceGroupDeployment
4) Azure cli Resource Log = az group deployment create  






