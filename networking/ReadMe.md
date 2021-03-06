# Networking

## [Azure VPN Gateway](https://github.com/Mykrowave/azure-architect-playbook/tree/master/networking/azure-vpn-gateway) 
- Connect on-premises network to Azure (site-to-site)
- Connect Individual Devices to Azure with (point-to-site)
- Connect Azure vnet to other Azure vnet (network-to-network)  
## [Network Security Groups](https://github.com/Mykrowave/azure-architect-playbook/tree/master/networking/network-security-groups)
- Set of Rules for Network Traffic
- Attach to a Subnet  
- Attach to a Network Interface  
## [Virtual Service Endpoints](https://github.com/Mykrowave/azure-architect-playbook/tree/master/networking/virtual-service-endpoints)
- Extends private networks by adding azure service PaaS Resources (Azure SQL DB, Azure Storage, CosmosDB, etc)
## [Virtual Network Peering](https://github.com/Mykrowave/azure-architect-playbook/tree/master/networking/virtual-network-peering)
- Connects Virtual Networks
- On Azure Backbone
- Use when you need to integrate Azure Virtual Networks  
## [Azure Traffic Manager](https://github.com/Mykrowave/azure-architect-playbook/tree/master/networking/azure-traffic-manager)
- DNS-Based traffic load balancer
## [Azure Load Balancer](https://github.com/Mykrowave/azure-architect-playbook/tree/master/networking/azure-load-balancer)
- Distribute Requests across multiple VMs or Services
## [Application Gateway](https://github.com/Mykrowave/azure-architect-playbook/tree/master/networking/application-gateway)
- Application Level Load Balancing
- Distributes Requests for an application across multiple services based on rules
## [Azure Routing](https://github.com/Mykrowave/azure-architect-playbook/tree/master/networking/azure-routing)
- Control Traffic Flow in your Network  
- Monitor Traffic
## [IP Addressing Schema](https://github.com/Mykrowave/azure-architect-playbook/tree/master/networking/ip-addressing-schema)
- Need to plan well to make sure organization has room to grow and can work well with on-prem networks
## [Monitoring](https://github.com/Mykrowave/azure-architect-playbook/tree/master/networking/monitoring)
- Network Watcher
- Diagnostics
- logs




### CIDR Notation 
- Shorthand for masks
- /X where X is the number of "turned-on"  n^(32-x) = Total IP Addresses

### OSI Model (Layers)  
7 - Application Layer (API)  
6 - Presentation Layer (Translation: Encryption, encoding, etc)  
5 - Session Layer (multiple transmission communications)  
4 - Transport Layer (transition of data between two points on a network)  
3 - Network Layer (structure packets)  
2 - Data Link (transmission between physically connected nodes)  
1 - Physical (Bits streamed - RAW)

### Hub-Spoke Topology
- Basic Components:  
  1) Network Security Group  
  2) Perimiter Network: Route external traffic / Firewall / inspect Packets  
  3) NVA  
  4) Express route

### DDOS Protection
- Basic: On by Default - Traffic Monitoring, Real-time mitigation
- Standard: Specifically tuned capabilities for Azure Virtual Network Resources



