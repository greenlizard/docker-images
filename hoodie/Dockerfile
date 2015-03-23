
FROM greenlizard/base

MAINTAINER GreenLizard Labs <gabriel@greenlizard.com.br>

RUN npm install -g hoodie-cli

# Add an xroot user because hoodie doesn't like being root
RUN adduser --disabled-password --gecos "" xroot && \
  echo "xroot ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Expose the port

ENV WWW 6001
ENV ADMIN 6002
ENV COUCH 5984


ENV HOME /home/xroot

ENV LANG en_US.UTF-8

RUN mkdir /src && chown xroot:xroot /src

VOLUME /src
WORKDIR /src
EXPOSE $WWW $ADMIN


USER xroot

ENV HOODIE_BIND_ADDRESS 0.0.0.0
ENV HOODIE_ADMIN_USER admin
ENV HOODIE_ADMIN_PASS admin
ENV COUCH_URL http://couchdb:5984

ONBUILD RUN npm install

#ENTRYPOINT [ "hoodie" ]
ENTRYPOINT [ "/bin/bash" ]