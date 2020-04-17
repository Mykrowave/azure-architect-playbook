# Install dotnet version in envrionment

wget -q -O - https://dot.net/v1/dotnet-install.sh | bash -s -- --version 3.1.102
export PATH="~/.dotnet:$PATH"
echo "export PATH=~/.dotnet:\$PATH" >> ~/.bashrc

# Create new MVC application
dotnet new mvc --name BestBikeApp

# Run to verify complete
cd BestBikeApp
dotnet run

# build release and zip
dotnet publish -o pub
cd pub
zip -r site.zip *

# deploy zipped
az webapp deployment source config-zip \
    --src site.zip \
    --resource-group [sandbox resource group name] \
    --name <your-unique-app-name>

