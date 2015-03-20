
FROM node:0.10-wheezy

MAINTAINER GreenLizard Labs <gabriel@greenlizard.com.br>

RUN npm install -g hoodie-cli
 
# Alt dependencies

# this avoids asking for couch admin pw
# this avoid hoodie only accepting connections from localhost (kinda pointless in a docker world)

ENV HOODIE_BIND_ADDRESS 0.0.0.0
EXPOSE 6001 6002 

RUN adduser --disabled-password --gecos "" hoodie; \
  echo "hoodie ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
ENV HOME /home/hoodie
USER hoodie
WORKDIR /home/hoodie
# Expose the port
EXPOSE 9000
