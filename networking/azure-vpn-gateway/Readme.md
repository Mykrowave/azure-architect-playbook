# Azure VPN Gateway  

## Policy-Based VPN  
- Specify statically the IP address of packets that should be encrypted  
- Source and Destination of tunneled networks defined in Policy

## Route-Based VPN  
- Regulation is not coupled to the means of its delivery
- Route Tables control this

## Required Azure Items Prerequisites (in order to Deploy)  
1) Virtual Network 
2) GatewaySubnet  
3) Public Ip Address  
4) Local NetWork GateWay (On Prem) 
5) Virtual Network Gateway  
6) Connection  

## Required On-Prem Items Prerequisites (if other site is on-prem)  
1) VPN Device that can allow Polcy or Route-based VPN  
2) Public Ip Address (routable from internet)

## Notes 
- One VPN Gateway per virtual network, BUT you can connect to multiple locations through one VPN  
