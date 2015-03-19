
FROM debian:wheezy

MAINTAINER GreenLizard Labs <gabriel@greenlizard.com.br>

RUN groupadd -r hoodie && useradd -g hoodie hoodie

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
      build-essential \
      curl \
      libffi-dev \
      libgdbm-dev \
      libncurses-dev \
      libreadline6-dev \
      libssl-dev \
      libyaml-dev \
      zlib1g-dev \
      vim \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /home/hoodie && \
    chown -R hoodie:hoodie /home/hoodie

USER hoodie

ENV NODE_VERSION 0.10.36
ENV PATH $HOME/.nvm/bin:$PATH

RUN touch $HOME/.bashrc
RUN curl --location https://raw.github.com/creationix/nvm/master/install.sh | sh 
RUN /bin/bash -c "source /$HOME/.bashrc"

RUN nvm install $NODE_VERSION && \
    nvm use $NODE_VERSION && \
    nvm alias default $NODE_VERSION

# node
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

