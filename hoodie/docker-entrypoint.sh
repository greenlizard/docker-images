#!/bin/bash
set -e

# wait container couchdb
until [ "`curl -X PUT $COUCH_URL/_config/admins/$HOODIE_ADMIN_USER -d '"'$HOODIE_ADMIN_PASS'"'`" <> 200 ]; do
    sleep 0.1;
done;

if [ "$1" = 'hoodie' ]; then
  # we need to set the permissions here because docker mounts volumes as root
  chown -R xroot:xroot /src
  HOME=/src exec gosu xroot "$@"
fi

#Set Admin on couchdb
rm -f /src/data/hoodie.pid
HOME=/src exec "$@"