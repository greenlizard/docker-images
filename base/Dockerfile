
FROM debian:wheezy

MAINTAINER GreenLizard Labs <gabriel@greenlizard.com.br>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
      build-essential \
      libffi-dev \
      libgdbm-dev \
      libncurses-dev \
      libreadline6-dev \
      libssl-dev \
      libyaml-dev \
      zlib1g-dev \
      sudo \
      curl \
      git \
      vim \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN addgroup --gid=1000 travis && \
    adduser --system --uid=1000 --shell /bin/bash --gecos "" travis && \
    echo "travis ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    chown -R travis:travis /home/travis
