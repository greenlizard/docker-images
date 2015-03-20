
FROM greenlizard/nvm

MAINTAINER GreenLizard Labs <gabriel@greenlizard.com.br>

ENV NODE_VERSION 0.10
RUN /bin/bash -l -c "nvm install $NODE_VERSION && nvm use $NODE_VERSION && rm -rf $HOME/.nvm/bin && ln -s \$NVM_BIN $HOME/.nvm/bin"

RUN addgroup --gid=2000 hoodie && \
    adduser --system --uid=2000 --home /home/hoodie --shell /bin/bash hoodie && \
    echo "hoodie ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    chown -R hoodie:hoodie /home/hoodie && \
    chown -R hoodie:hoodie /usr/local

USER hoodie
RUN npm install -g hoodie-cli
 
# Alt dependencies
 
EXPOSE 6001 6002 
 
# this avoids asking for couch admin pw
ENV CI true
# this avoid hoodie only accepting connections from localhost (kinda pointless in a docker world)
ENV HOODIE_BIND_ADDRESS 0.0.0.0
RUN hoodie new theapp
WORKDIR theapp
RUN npm install
CMD hoodie start -n

