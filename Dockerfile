FROM microsoft/azure-functions-runtime:2.0.0-jessie
ENV AzureWebJobsScriptRoot=/home/site/wwwroot
WORKDIR /home/site/wwwroot

# get deps first
COPY common/*.json common/
COPY hello/*.json hello/
COPY quote/*.json quote/
COPY scripts/install.js scripts/install.js
RUN ./scripts/install.js && npm cache clean --force

# put everything else in
COPY common common
COPY hello hello
COPY quote quote

WORKDIR /app
EXPOSE 80
