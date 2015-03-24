#!/bin/bash
docker build -t greenlizard/base base
docker build -t greenlizard/couchdb couchdb
docker build -t greenlizard/java java
docker build -t greenlizard/couchdb-lucene couchdb-lucene
docker build -t greenlizard/nodejs nodejs
docker build -t greenlizard/hoodie hoodie
