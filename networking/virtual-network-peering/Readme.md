# Virtual Network Peering  

- Can connect vnets existing in same regions or different regions  
- Need to create connections on both sides
- Cross Subscription?  YEP
- Non Transitive (if A-B && B-C peering is provisioned, A-C is not allowed.  A-C would need to be explicitly peered)
- Gateway Transit is a Hybrid of Peering and Virtual Network Gateway to connect to on-prem 
- Peering might not be the best choice when you have existing VPN or Express Route or services behind Azure Load Balancers (that would be accessed from a peered vnet.


