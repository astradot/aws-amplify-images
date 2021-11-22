
FROM ubuntu:20.04

RUN apt-get update && apt-get -y install curl unzip git   openssl
#node 14
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -

RUN apt-get -y install nodejs

# npm 8
RUN npm install --global npm
