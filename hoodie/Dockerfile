
FROM node:0.10-wheezy

MAINTAINER GreenLizard Labs <gabriel@greenlizard.com.br>

RUN npm install -g hoodie-cli
 
# Alt dependencies

# this avoids asking for couch admin pw
# this avoid hoodie only accepting connections from localhost (kinda pointless in a docker world)

ENV HOODIE_BIND_ADDRESS 0.0.0.0

RUN adduser --disabled-password \
            --system \
            --home /home/hoodie \
            --shell /bin/bash \
            -c "Hoodie Administrator" \
            --gecos "" hoodie; \
        echo "hoodie ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER hoodie

ENV HOME /home/hoodie
WORKDIR /home/hoodie
# Expose the port
EXPOSE 6001 6002 
