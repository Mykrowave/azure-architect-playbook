# Azure Traffic Manager  

## Service Endpoints  
1) Azure Endpoints: Azure app services, pips setup in Azure, etc
2) External Endpoints : On-prem locations, external services
3) Nested Endpoints : create complex routing by combining with other azure traffic manager profiles


## Routing Types
1) Weighted: Each Possible Endpoint has a weight associated with it used to calculate the probablity that it will be chosen.
2) Performance-Based: The service with the lowest latency (and available) will be chosen
3) Georaphic: The service within the physical location bounds of the originating request will be chosen (government restrictions come to mind)
4) MultiValue:  Return multiple endpoints and let the client decide  
5) Subnet: Set up specific rules based on originating IP addresses to return endpoint. (all requests from Corporate Office)  
6) Priority: A Failover mechanism.  If A is down, B is used.  A & B down, then C is returned.  ETC  


