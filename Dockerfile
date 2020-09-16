FROM mcr.microsoft.com/powershell:preview



RUN pwsh -c 'Install-Module -Name Az -Confirm:$False -Force'
