FROM mcr.microsoft.com/powershell:preview


RUN Install-Module -Name Az -AllowClobber  -Confirm:$False -Force
