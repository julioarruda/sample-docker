FROM mcr.microsoft.com/powershell:preview

SHELL ["pwsh"]

RUN Install-Module -Name Az -Confirm:$False -Force
