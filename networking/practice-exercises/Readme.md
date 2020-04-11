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
9) Create MultiSite Application Gateway for "test.com" and "test2.com"
10) [Create a virtual network setup with VM and Troubleshoot](https://docs.microsoft.com/en-us/learn/modules/troubleshoot-azure-network-infrastructure/3-exercise-troubleshoot-networking-with-network-watcher)
11) [Network Logs](https://docs.microsoft.com/en-us/learn/modules/troubleshoot-azure-network-infrastructure/5-exercise-troubleshoot-networking-with-network-watcher-metrics-logs)



## Notes

### Site to Site VPN
- Remember Ip Address Ranges cant overlap
- VPN Gatway SKUs scale up with Bandwidth and number of point-to-site connections.  Basic has less features
- Remember, need special Gateway Subnet for special VMs to be deployed to
