# Docker
- Docker much more light weight than VM
- Docker containers share the underlying resources and libraries (so not isolated by physical means as opposed to VMs that are)

## Azure Container Instances
- Run Containers here


## Docker Registry
- Azure Container Registry and Docker Hub
- Many organizations publish docker images to DockerHub (it's public and free with account)
- Need Registry, repository, and version tag to get image you want

## Docker File
- Automate the alteration (layers of customization) to the base image and create a new Custom Image
- Text File containing all commands to build an image

### Commands
- FROM mcr.microsoft.com/dotnet/core/sdk:2.2 (downloads base image from a registry)
- WORKDIR /app (sets working directory of container)
- COPY myapp_code . (copy files from host to container)
- RUN dotnet build -c Release -o /rel (commandline arguments)
- EXPOSE 80 (tell container to open this port)
- WORKDIR /rel (sets working directory again)
- ENTRYPOINT ["dotnet", "myapp.dll"] (command to run when app starts)

## Azure Container Registry
- Access Levels: Reader (can pull), Contributer (can pull and push), owner (can pull, push, and assign roles), admin (duh)
- Replicate images to different regions for compute-close resources


## Notes
- Containers do not persist file changes made in it's image.  To do so you would need to take extra steps to preserve the state of the container
- possible to mount volumes to a container for persistance (not super great idea)


