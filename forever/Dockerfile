
FROM greenlizard/hoodie

MAINTAINER GreenLizard Labs <gabriel@greenlizard.com.br>

RUN npm install -g forever


# Copy files and run
ADD . /opt/apps/node-docker
RUN cd /opt/apps/node-docker && npm install

ENV HOODIE_BIND_ADDRESS 0.0.0.0
EXPOSE 6001 6002 


#forever start -o /var/log/app.out.log -e /var/log/app.err.log -a --killSignal=SIGTERM /path/to/myapp/node_modules/hoodie-server/bin/start

CMD forever /opt/apps/node-docker/app.js