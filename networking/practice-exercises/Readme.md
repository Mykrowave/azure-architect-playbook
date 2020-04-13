# Practice

## In Portal  
1) Create a Site to Site VPN with two Azure Vnets
2) Create a Point to Site VPN between VNET and X
3) Create a security with the use of Network Security Group and Application Security Groups (ONLY allow traffic from A -> B)
4) Extend a Blob Storage Account to a private network using Virtual Service Endpoint  
5) Create an Azure Traffic Manager Profile of type weighted 50/50 on an app service deployed in east us and west us
6) Create an External Load Balancer for Two VM Workloads. (Special Note: Try to find where you can set IP-Affinity for sessions)
7) Create an Internal Load Balancer? (exploratory)
8) Create an Application Gateway that has route based routing for "/test" and "/test2".  One is VM and one is AppService
9) Create as Application Gateway with WAF and block my pip.
10) [Create a virtual network setup with VM and Troubleshoot](https://docs.microsoft.com/en-us/learn/modules/troubleshoot-azure-network-infrastructure/3-exercise-troubleshoot-networking-with-network-watcher)
11) [Network Logs](https://docs.microsoft.com/en-us/learn/modules/troubleshoot-azure-network-infrastructure/5-exercise-troubleshoot-networking-with-network-watcher-metrics-logs)



## Notes

### (1) Site to Site VPN
- Remember Ip Address Ranges cant overlap
- VPN Gatway SKUs scale up with Bandwidth and number of point-to-site connections.  Basic has less features
- Remember, need special Gateway Subnet for special VMs to be deployed to

### (2) Point to Site VPN
- Check [here](https://docs.microsoft.com/en-us/azure/vpn-gateway/vpn-gateway-howto-point-to-site-resource-manager-portal)  for a complete walkthrough
- Mostly reliant on Certificates
- Check Virtual Network Gateway SKUS.
- need to find an isolated address range for dynamic ip distribution - 172 blocked section seems good since vnet is probably going to be built in 10 block.  But, check complete network (even on-prem).  They can't overlap

### (3) NSG
- Subnet to subnet can, by default, communicate
- Associating a Network Security Group to a subnet requires they be in the same region
- Can't figure out if there should be 1 NSG per subnet or if 1 Network Security Group per subnet.  Follow KISS principal.  The less you need to manage, the better - so try to arch it that way

### (4) Service Endpoints
- Network Security Group rules will override settings between storage account and subnet service endpoints.  So, make sure that if you have a NSG associated to a subnet or vm, include rules there

### (5) Azure Traffic Manager
- Azure Traffic Manager requires S1
- you cannot use two webapps in the same region as AzureEndpoints

### (6) External Load Balancer
- REmember to set up Health Probe
- Setting up BackEnd Pool - associate by VM or VM ScaleSet.  1 VM per pool if not in ScaleSet
- Internal Load Balancer is a setting
- scripts look like update IPconfig on nic (of vm) to add to pool, but didnt see that in portal on VM side or nic side

### (7) Application Gateway
- When doing path-based routing, you still have to set up the "main" backend target
- Not sure what the default Health checks are, but I believe they are based on route rules?
- Check NSGs or traffic rules if unhealthy
- REDO (if time) and troubleshoot why app service was considered unhealthy. It was configured correctly.
