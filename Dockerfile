FROM mcr.microsoft.com/powershell:preview


RUN powershell -Command  Install-Module -Name Az -AllowClobber  -Confirm:$False -Force
