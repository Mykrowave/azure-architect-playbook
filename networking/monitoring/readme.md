# Monitoring

## Network Watcher

### Monitoring Tools
1) Topology : Overview graphical view of network infrastructure
2) Connection Monitor : Checks connection between resources.  Checks latency and catches resulting changes from things like altering NSG.
3) Network Performance Monitor : Monitor network traffic.  PAcket loss, latency tracking with alerts

### Diagnostic Tools
1) IP Flow Verify : Tests if packets are allowed or denied for VM
2) Next Hop Tool : Tells you how a packet is going to get to its destination
3) Security Group View : Breaks Down NSGs to help diagnose issues
4) Packet Capture Tool : does what it says.
5) Connection Troubleshoot : TCP connectivity between resources
6) VPN Troubleshoot : long running check on virtual network gateway

## Logs
1) FlowLogs - Ingress / Egress on a per-rule basis.(NSG)  Use an outside tool to parse and visual the logs
2) Diagnostic Logs - ^
3) Traffic Analytics - user and application activity across your networks.  Log Analytics required


