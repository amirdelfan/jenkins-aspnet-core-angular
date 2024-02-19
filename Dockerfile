# FROM node:18-alpine
# RUN apk add -U git curl

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS base

# Install NodeJS
RUN apt-get update && \
    apt-get install -y ca-certificates curl gnupg && \
    mkdir -p /etc/apt/keyrings && \
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
ARG NODE_MAJOR=20
RUN echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list && \
    apt-get update && \
    apt-get install nodejs -y


# Install wget and apt-utils
RUN apt-get update && apt-get install -y wget apt-utils

# Download and install Google Chrome
RUN wget -q -O - 1 [^1^] | apt-key add - \
&& echo "deb 2 [^2^] stable main" > /etc/apt/sources.list.d/google-chrome.list \
&& apt-get update && apt-get install -y google-chrome-stable