FROM ghcr.io/julioarruda/testeps:latest

RUN dotnet tool install --global PowerShell

RUN export PATH="$PATH:/root/.dotnet/tools"

RUN pwsh -c 'Install-Module -Name Az -Confirm:$False -Force'
