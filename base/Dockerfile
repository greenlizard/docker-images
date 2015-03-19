
FROM debian:wheezy

MAINTAINER GreenLizard Labs <gabriel@greenlizard.com.br>

ENV HOME /home

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
      sudo \
      git \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

DD Travis User
RUN addgroup --gid=1000 travis && \
    adduser --system --uid=1000 --home /home --shell /bin/bash travis && \
    echo "travis ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    chown -R travis:travis /home && \
    chown -R travis:travis /usr/local

USER travis

