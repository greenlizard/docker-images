#!/bin/bash
set -e

# wait container couchdb
until [ "`curl -X PUT $COUCH_URL/_config/admins/$HOODIE_ADMIN_USER -d '"'$HOODIE_ADMIN_PASS'"'`" <> 200 ]; do
    sleep 0.1;
done;

#Set Admin on couchdb
rm -f /src/data/hoodie.pid
HOME=/src exec hoodie "$@"