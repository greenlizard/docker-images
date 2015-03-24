
FROM debian:wheezy

MAINTAINER GreenLizard Labs <gabriel@greenlizard.com.br>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
      sudo \
      curl \
      git \
      vim \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

