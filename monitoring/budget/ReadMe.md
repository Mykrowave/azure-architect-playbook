# Budget Monitoring  
The goal is to optimize Azure spending.  Monitoring is one spoke on that wheel.  
You can easily set up alerts around budget.

## Azure Advisor  
Azure Advisor can offer some assistance on recommendations to save costs. Dont rely on it, but it's not a bad place to start if you are looking to fine tune costs.  

# Billing and Cost Management  
Cost management is an organizational problem. It needs to be an ongoing effort.

1) Estimate before provisioning. Azure Pricing calculator does a good job, or if you have an Enterprise Agreement, view and download the Azure Price Sheet.  
2) Create a Budget for each app domain and set up Cost Alerts to get more control and transparency of billing.  Cloud Pricing is super variable.  Stay on top of it  
3) You can integrate with Azure's billing and consumption API's.  
4) Use Tags on resources. In addition to other organization benefits, it really helps to group costs by tag. You can create a Tag Policy for the whole subscription  

# Azure Budget  

## SideNotes

- To view costs, you need account or subscription level access to cost or billing info  
- If there is a service incident, you can request a SLA credit through submitting a suppport request.  
- It's obvious that Finance and Managers need to know about costs, but it's important that each app team understands the daily cost of what they have built as well versus the usage  
- Budgets, Alerts, and Cost Analysis can all be sliced into different "scopes."  A scope could be a resource group or it could be the whole subscription  
- It's possible to use Powershell and ARM Template to deploy a Budget


