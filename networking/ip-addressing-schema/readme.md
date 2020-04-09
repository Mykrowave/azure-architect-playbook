# IP Addressing Schema

## BLOCKED RANGES used for Internal Networking
- 10.0.0.0 to 10.255.255.255
- 172.16.0.0 to 172.31.255.255
- 192.168.0.1 to 192.168.255.255

## Notes
- By default, all subnets can communicate in vnet
- largest subnet is /8
- smallest subnet is /29
- there can be no private ip address overlap with on-prem SO CHECK OVERLAPS!
- Public IP Addresses are region specific

## Gathering Requirements for Azure Network Plan
- Based on the services running on the infrastructure, what devices do you need to separate?
- How many subnets do you need?
- How many devices per subnet will you have?
- How many devices are you planning to add to the subnets in future?
- Are all subnets going to be the same size?
- How many subnets do you want or plan to add in future?
