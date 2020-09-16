FROM mcr.microsoft.com/powershell:preview

RUN curl -sL https://aka.ms/InstallAzureCLIDeb

RUN apt-get update
RUN apt-get install ca-certificates curl apt-transport-https lsb-release gnupg

RUN curl -sL https://packages.microsoft.com/keys/microsoft.asc \
    gpg --dearmor \
    tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null


RUN AZ_REPO=$(lsb_release -cs)
RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" \
    tee /etc/apt/sources.list.d/azure-cli.list

RUN apt-get update

RUN apt-get install azure-cli


RUN pwsh -c 'Install-Module -Name Az -Confirm:$False -Force'
