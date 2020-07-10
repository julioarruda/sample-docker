FROM mcr.microsoft.com/dotnet/core/sdk:3.1

COPY . App/
WORKDIR /App

RUN dotnet restore

RUN dotnet build

RUN dotnet publish -c Release

WORKDIR /App/bin/Release/netcoreapp3.1/publish/
#
ENTRYPOINT ["dotnet", "dockerimagetogithubpackages.dll"]