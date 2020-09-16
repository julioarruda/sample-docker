FROM mcr.microsoft.com/powershell:preview


RUN Install-Module Az -Confirm:$False -Force
