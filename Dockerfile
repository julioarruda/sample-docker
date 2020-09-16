FROM mcr.microsoft.com/azure-cli:latest

RUN wget https://download.visualstudio.microsoft.com/download/pr/afcea1e4-262f-4f26-9e6b-5f820d9822e3/b7a7e1ed4384d3daf1e4da6811e7961f/aspnetcore-runtime-3.1.8-linux-musl-x64.tar.gz

RUN mkdir -p "$HOME/dotnet" && tar zxf dotnet-sdk-3.1.301-linux-x64.tar.gz -C "$HOME/dotnet"
RUN export DOTNET_ROOT=$HOME/dotnet
RUN export PATH=$PATH:$HOME/dotnet

RUN dotnet tool install --global PowerShell

RUN pwsh -c 'Install-Module -Name Az -Confirm:$False -Force'
