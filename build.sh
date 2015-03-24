#!/bin/bash
set -e
echo '---------------------------------'
docker build -t greenlizard/base base
echo '---------------------------------'
docker build -t greenlizard/couchdb couchdb
echo '---------------------------------'
docker build -t greenlizard/java java
echo '---------------------------------'
docker build -t greenlizard/couchdb-lucene couchdb-lucene
echo '---------------------------------'
docker build -t greenlizard/nodejs nodejs
echo '---------------------------------'
docker build -t greenlizard/hoodie hoodie
echo '---------------------------------'
