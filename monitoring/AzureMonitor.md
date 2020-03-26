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


## Log Analytic WorkSpaces  
Need to install an Activity Log Analytics solution.  
Option 1: Install a solution from the MarketPlace https://azuremarketplace.microsoft.com/en-us/marketplace/apps/category/management-tools?page=1&subcategories=management-solutions  
Option 2: Install from a Community built selection QuickStart: https://azure.microsoft.com/en-us/resources/templates/  


## UnOrdered Notes
Don't forget to Turn on Diagnostics.  It's not always on by default  
Will need to Setup Agent on a VM  
A Storage Account is needed $  
Maximium of 3 Diagnostic settings per resource  
This can be configured through a REST API, PowerShell, Azure CLI, ARM Template  
You can setup diagnostics to be cross subscription  
Authorization is handled through Active Directory




