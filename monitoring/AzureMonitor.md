# Azure Monitor
Provides a "centralized" place to manage Metrics, Diagnostics, and Logs across all pieces of your Infrastructure.  Multiple Diagnostic settings can be applied to a single resource.  
There are many many monitoring solutions that can feed a Log Analytics workspace. The Azure Marketplace houses them all.


## Data Types 
1) Metrics - Time Sensitive values that represent some aspect of target resource
2) Logs - Structured, Record-Based log files relevant to target resource 

## Resource Diagnostic Setting
Need to determine what diagnostics need to be collected AND where that data should be stored.  
Type of Platform Logs:  
1) Resource(Diagnostic) Logs - insights WITHIN an Azure Resource  
2) Activity Log - insights ABOUT what happened to an Azure Resource  
3) Azure Active Directory Log - "User" reports  

Possible Destinations:  
1) Storage Account (create csv's, excel reports, static analysis)
2) Log Analytics WorkSpaces (Query specifics and dig those problems out)
3) Event Hubs namespaces (date pipelines "ingestion")  


## Activity Log  
You cannot create a diagnostic setting for Activity Log through PowerShell or Azure CLI, but you can create a Deployment ARM Template and Deploy through PowerShell or Azure CLI  

## Sources of Azure Monitor Logs  
Azure AD  
Activity Logs: Stored separately for each resource, but you can set up a solution to write to Log Analytics Workspaces  
Resource Diagnostics: Configre diagnostic settings to write  
Platform Metrics  
VM: Install Agent  
Application
Containers



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


# Security Center
1) Use Playbooks to respond to activities




