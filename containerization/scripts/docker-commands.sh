# pull an image docker {command} registry-url/repository:tag
docker pull mcr.microsoft.com/dotnet/core/samples:aspnetapp

# view images in local registry
docker image list

# run a docker container of an image
docker run mcr.microsoft.com/dotnet/core/samples:aspnetapp

# more specific run 
# -p to provide the {localport:containerport} - because by default no traffic can flow into a container
# -d to let docker to run in background (it isnt meant to be used interactively)
docker run -p 8080:80 -d mcr.microsoft.com/dotnet/core/samples:aspnetapp

# view active containers
docker containers ls

# shortcut to view active containers
docker ps

# stop container
docker stop <container-id>

# view all containers (Even stopped)
docker ps -a

# restart a container
docker start <container-id>

# remove a container
docker rm <container-id>

# remove a docker image
docker image rm mcr.microsoft.com/dotnet/core/samples:aspnetapp

# building docker image
# -f specifies Dockerfile
# -t name of the image with tag
# . build context for source for COPY command
docker build -f Dockerfile -t myapp:v1 .

# docker tag image
docker tag myapp:v1 myregistry.azurecr.io/myapp:v1

# push image
docker push myregistry.azurecr.io/myapp:v1

# start Azure Container Instance
az container create --resource-group mygroup \  
--name myinstance \
--image myregistry.azurecr.io/myapp:latest \  
--dns-name-label mydnsname \  
--registry-username <username> \  
--registry-password <password>

# show Azure Container
az container show --resource-group mygroup \  
--name myinstance \  
--query ipAddress.fqdn
