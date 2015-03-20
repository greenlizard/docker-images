
FROM node:0.10-wheezy

MAINTAINER GreenLizard Labs <gabriel@greenlizard.com.br>


RUN npm install -g hoodie-cli forever

RUN useradd --system \
       -m \
       --home /home/hoodie \
       --shell /bin/bash \
       --no-user-group \
       -c "Hoodie Administrator" hoodie

# RUN addgroup --gid=2000 hoodie && \
#     adduser --system --uid=2000 --home /home/hoodie --shell /bin/bash hoodie && \
#     echo "hoodie ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
#     chown -R hoodie:hoodie /home/hoodie && \
#     chown -R hoodie:hoodie /usr/local



USER hoodie
 
# Alt dependencies
 
EXPOSE 6001 6002 
 
# this avoids asking for couch admin pw
ENV CI true
# this avoid hoodie only accepting connections from localhost (kinda pointless in a docker world)
ENV HOODIE_BIND_ADDRESS 0.0.0.0
VOLUME /home/hoodie
WORKDIR /home/hoodie

