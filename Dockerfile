FROM mcr.microsoft.com/powershell:preview

#RUN wget https://download.visualstudio.microsoft.com/download/pr/e301fc5c-c8dd-4f8e-94ee-d19f3caf508f/a4191801aeb8cd813cf7057ac4d936a0/dotnet-sdk-3.1.402-linux-musl-x64.tar.gz


#RUN mkdir -p "$HOME/dotnet" && tar zxf dotnet-sdk-3.1.402-linux-musl-x64.tar.gz -C "$HOME/dotnet"
#RUN export DOTNET_ROOT=$HOME/dotnet
#RUN export PATH=$PATH:$HOME/dotnet

#RUN echo $PATH
LABEL org.opencontainers.image.source https://github.com/julioarruda/sample-docker

#RUN dotnet tool install --global PowerShell

#RUN export PATH="$PATH:/root/.dotnet/tools"
RUN exit
RUN curl -sL https://aka.ms/InstallAzureCLIDeb |  bash

RUN pwsh -c 'Install-Module -Name Az -Confirm:$False -Force'
