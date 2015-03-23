FROM greenlizard/java

MAINTAINER GreenLizard Labs <gabriel@greenlizard.com.br>

ADD ./opt /opt

# Configuration
RUN mv /opt/local.ini /usr/local/etc/couchdb/
RUN sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini
RUN /opt/couchdb-config

#
# Lucene
#

# Get the source
RUN cd /opt && \
 wget https://github.com/rnewson/couchdb-lucene/archive/v0.9.0.tar.gz && \
 tar xzf /opt/v0.9.0.tar.gz
RUN mv /opt/couchdb-lucene-0.9.0 /opt/couchdb-lucene-0.9.0.src

# build couchdb-lucene
RUN cd /opt/couchdb-lucene-0.9.0.src && mvn
RUN cd /opt && tar xvzf /opt/couchdb-lucene-0.9.0.src/target/couchdb-lucene-0.9.0-dist.tar.gz 

# cleanup
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /opt/couchdb-lucene-0.9.0.src

RUN adduser --system --disabled-password --home /opt/couchdb-lucene-0.9.0 --no-create-home --shell=/bin/bash --group --gecos "" couchdb 

RUN sed -e 's/^host=localhost$/host=0.0.0.0/' -i /opt/couchdb-lucene-0.9.0/conf/couchdb-lucene.ini

RUN chown -R couchdb:couchdb /opt/couchdb-lucene-0.9.0

# USER couchdb
CMD ["/opt/start_couch"]

EXPOSE 5984
EXPOSE 5985