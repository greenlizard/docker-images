
FROM node:0.10-wheezy

MAINTAINER GreenLizard Labs <gabriel@greenlizard.com.br>

RUN npm install -g hoodie-cli
 
# Alt dependencies

# this avoids asking for couch admin pw
# this avoid hoodie only accepting connections from localhost (kinda pointless in a docker world)
USER daemon

ENV HOODIE_BIND_ADDRESS 0.0.0.0

VOLUME /workspace

WORKDIR /workspace

EXPOSE 6001 6002 
