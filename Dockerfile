# # Use the official Ubuntu image as the base image
# FROM ubuntu:latest

# # Update the system and install curl
# RUN apt-get update && apt-get install -y curl

# # Install Node.js using the official installation script
# RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
# RUN apt-get install -y nodejs

# # Install ASP.NET Core 3.1 using the official installation script
# RUN curl -fsSL https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -o packages-microsoft-prod.deb
# RUN dpkg -i packages-microsoft-prod.deb
# RUN apt-get update && apt-get install -y dotnet-sdk-6.0 aspnetcore-runtime-6.0

FROM node:18-alpine

RUN apk add -U git curl

# # Install ASP.NET Core 3.1 using the official installation script
RUN curl -fsSL https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -o packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get update && apt-get install -y dotnet-sdk-8.0 aspnetcore-runtime-8.0