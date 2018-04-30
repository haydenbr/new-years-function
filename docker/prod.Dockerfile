FROM microsoft/azure-functions-runtime:2.0.0-jessie

LABEL maintainer="haydenbr"
ENV AzureWebJobsScriptRoot=/home/site/wwwroot

WORKDIR /home/site/wwwroot

COPY common/*.* common/
COPY hello/*.* hello/
COPY quote/*.* quote/

COPY scripts/install.js scripts/install.js
RUN ./scripts/install.js

COPY common/src common/src
COPY hello/src hello/src
COPY quote/src quote/src

WORKDIR /app
EXPOSE 80
