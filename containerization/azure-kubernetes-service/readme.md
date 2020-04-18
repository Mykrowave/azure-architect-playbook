# Azure Kubernetes Service (K8s)

## Kubernetes
- Automate deployment, scaling, and management of containerized workloads
- Not a full PaaS offering
- not a monolithic application (deployment, scaling, load balancing, logging, monitoring are all optional
- team needs to understand microservice arch
- deployment is configred as a cluster (at least one master machine and one or more worker machines)
- YOU are responsible for maintaining Cluster - manage OS upgrades, networking, memory, storage, etc

## Azure Kubernetes
- a service to manage your hosted kubernetes envrionment
- Get the benefit of Kubernetes without the overhead of complex operational workloads managing it
- Can integrate with Azure AD
- Azure Monitor is usable
- Horizontal pod autoscaler or cluster autoscaler
- GPU enabled node pools
- attach and reattach to storage volumes
- pod to pod communication and on-prem communication
-


### AKS Cluster
- AKS streamlines the underlying clster management tasks

## Azure Dev Spaces
- Minimize the local dev machine setup
- Rapidly iterate and debug code in kubernetes using VS or VS Code
- Generate Docker and K8s config as code assets to use from dev to prod
- Develop your code in isolation and do integrated testing with other components without replicating or mocking up dependencies
- Work as a Team



## Notes
- Recommended 3 nodes in pool in production
- Master node in cluster is free.  You only pay for node VMs, storage, and networking in clusters


