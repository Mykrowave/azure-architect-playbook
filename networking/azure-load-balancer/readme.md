# Azure Load Balancer  

## Distribution Modes
- Use 5-tuple when session doesnt matter
- Need Ip-Affinity with RDP, Media Upload, Save User settings in session

### 5-tuple (with port, totally random because port can change)
1) Source IP
2) Source Port
3) Destination IP
4) Destination Port
5) Protocol Type (TCP / UDP)  
### Ip-Affinity (specific client will get same distribution choice everytime - "store session")
1) Source IP
2) Destination IP
3) Protocol Type (optional?)

## Internal vs External Load Balancer
- External Load Balancer distributes workloads requested from internet
- Internal Load Balancer districbutes workloads from inside Azure (service to service)

## Basic vs Standard Load Balancer SKU
- Standard has more features lol

