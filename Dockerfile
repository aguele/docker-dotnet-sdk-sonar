FROM microsoft/dotnet:2.2-sdk
LABEL GUELE Anthony <git@aguele.fr>
LABEL version="2.2"

# Install the java runtime environment 8
RUN apt-get update && apt-get install openjdk-8-jre -y

# Install the sonar scanner for .netCore
RUN dotnet tool install --global dotnet-sonarscanner --version 4.3.1

# Install the coverlet console
RUN dotnet tool install --global coverlet.console

ENV PATH="/root/.dotnet/tools:${PATH}"