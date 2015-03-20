
FROM node:0.10-wheezy

MAINTAINER GreenLizard Labs <gabriel@greenlizard.com.br>

RUN npm install -g hoodie-cli
 
# Alt dependencies

# this avoids asking for couch admin pw
# this avoid hoodie only accepting connections from localhost (kinda pointless in a docker world)

ENV HOODIE_BIND_ADDRESS 0.0.0.0

# Add an xroot user because hoodie doesn't like being root
RUN adduser --disabled-password --gecos "" xroot && \
  echo "xroot ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN apt-get -yq remove adduser

# Expose the port
EXPOSE 6001 6002

ENV HOME /home/xroot

ENV LANG en_US.UTF-8

RUN mkdir /src && chown xroot:xroot /src
WORKDIR /src


USER xroot

# Set aliases
RUN echo "alias ls='ls --color=auto'" >> /home/xroot/.bashrc
RUN echo "alias ll='ls --color=auto -l'" >> /home/xroot/.bashrc
RUN echo "alias l='ls --color=auto -lA'" >> /home/xroot/.bashrc
RUN echo "alias c='clear'" >> /home/xroot/.bashrc

CMD /bin/bash

ONBUILD RUN npm install
ONBUILD RUN bower install

