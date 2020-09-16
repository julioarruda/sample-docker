FROM mcr.microsoft.com/powershell:preview

RUN pwsh -ex unrestricted -noni -Command Install-Module -Name Az
