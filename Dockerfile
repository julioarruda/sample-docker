FROM ghcr.io/julioarruda/testeps:latest


ENV PATH "$PATH:$HOME/dotnet:/root/.dotnet/tools"

ENV DOTNET_ROOT "$HOME/dotnet"


RUN dotnet tool install --global PowerShell

RUN pwsh -c 'Install-Module -Name Az -Confirm:$False -Force'
