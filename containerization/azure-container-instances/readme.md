# Azure Container Instances
- Can pull images from Azure Container Registry to deploy


## Restart Policies
1) ALWAYS - good for long running tasks - like web servers
2) NEVER - containers only run once
3) ONFAILURE - container only restarts if nonzero exit code.

## Set Environment Variables
- Pass Environment Variables to container with the environment-variables option
- To be more secure and not store sensitive information in plain text use the secure-environment-variables option

## Data Volumes
- Containers are stateless
- Need to mount a volume from an external store
- az bash command gives options for azure file share parameters

## Troubleshoot
- Attach to watch container instance "happenings" - log streaming
- show metrics like cpu and memory










