FROM mcr.microsoft.com/azure-cli:mcr.microsoft.com/azure-cli

RUN wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb

RUN apt-get update
RUN apt-get install -y apt-transport-https
RUN apt-get update 
RUN apt-get install -y dotnet-sdk-3.1

RUN dotnet tool install --global PowerShell

RUN pwsh -c 'Install-Module -Name Az -Confirm:$False -Force'
