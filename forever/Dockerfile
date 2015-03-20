
FROM node:0.10-wheezy

MAINTAINER GreenLizard Labs <gabriel@greenlizard.com.br>

RUN npm install -g forever


# Copy files and run
ADD . /opt/apps/node-docker
RUN cd /opt/apps/node-docker && npm install

ENV HOODIE_BIND_ADDRESS 0.0.0.0
EXPOSE 6001 6002 

CMD forever /opt/apps/node-docker/app.js