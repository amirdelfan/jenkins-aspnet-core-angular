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

run apk add -U git curl

# Install .NET dependencies
RUN apk add --no-cache \
ca-certificates \
krb5-libs \
libgcc \
libintl \
libssl3 \
libstdc++ \
zlib

# Install ASP.NET Core 8.0
RUN wget -O aspnetcore.tar.gz https://dotnetcli.azureedge.net/dotnet/aspnetcore/Runtime/8.0.0-preview.1.21102.12/aspnetcore-runtime-8.0.0-preview.1.21102.12-linux-musl-x64.tar.gz \
&& aspnetcore_sha512='a7f9d4c6f9a0f9b2f9f9a8e1a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9a8f9'

