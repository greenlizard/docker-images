
FROM node:0.10-wheezy

MAINTAINER GreenLizard Labs <gabriel@greenlizard.com.br>

RUN npm install -g hoodie-cli
 
# Alt dependencies
 
RUN addgroup docker && \
    adduser --system --home /workspace --shell /bin/bash docker && \
    echo "docker ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    chown -R docker:docker /workspace

EXPOSE 6001 6002 
 
# this avoids asking for couch admin pw
# this avoid hoodie only accepting connections from localhost (kinda pointless in a docker world)
ENV HOODIE_BIND_ADDRESS 0.0.0.0

USER docker

VOLUME /workspace
WORKDIR /workspace

