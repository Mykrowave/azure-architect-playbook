# Application Gateway
- Operates on the OSI 7 Layer
- Setup Rules on the App.ication Gateway
- Load Balance is Round Robin (can tweak for session stickiness)
- Requires vnet and subnet

## Parts of an Application GateWay
1) FrontEnd Ip Address
2) Listener(s) route traffic behind based on roles (also contains SSL cert here to handle https layer)
3) Routing Rules defined at Listener level.
4) BackEnd Pools (where the routing rules send to to get the work done)
5) Web Application Firewall - checks for a multitude of http type attacks
6) Health Probes

## Path-Based Routing
- Can Distribute requests based on the path of the http request.  

## Multi-Site Hosting
- Can host multiple sites with a DNS CName entry for each site.
- This can be handy for multi-tenant situations.

## Advantages of Application Gateway
- E2E Encryption
- Support for all Web protocols
- Firewall
- Autoscaling
