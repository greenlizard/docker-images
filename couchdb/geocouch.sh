#!/bin/sh -x
cd /tmp
 
if [ ! -d "geocouch" ]; then
  git clone https://github.com/couchbase/geocouch.git
fi
 
cd geocouch
 
COUCH_EBIN="/usr/local/lib/couchdb/erlang/lib/$COUCHDB_VERSION/ebin"
COUCH_INCLUDE="/usr/local/lib/couchdb/erlang/lib/$COUCHDB_VERSION/include"
COUCH_SCRIPT="/usr/local/share/couchdb/www/script"
 
export ERL_COMPILER_OPTIONS="[{i, \"$COUCH_INCLUDE\"}]"
 
make
 
# install
mkdir -p /usr/local/etc/couchdb/default.d/
cp ebin/* $COUCH_EBIN/
cp etc/couchdb/default.d/geocouch.ini /usr/local/etc/couchdb/default.d/geocouch.ini
cp share/www/script/test/* $COUCH_SCRIPT/test/
 
 
HAS_SPATIAL_TESTS=`grep spatial $COUCH_SCRIPT/couch_tests.js`
 
if [ -z "$HAS_SPATIAL_TESTS" ]; then
  echo "\
      loadTest(\"spatial.js\"); \
      loadTest(\"list_spatial.js\"); \
      loadTest(\"etags_spatial.js\"); \
      loadTest(\"multiple_spatial_rows.js\"); \
      loadTest(\"spatial_compaction.js\"); \
      loadTest(\"spatial_design_docs.js\"); \
      loadTest(\"spatial_bugfixes.js\"); \
      loadTest(\"spatial_offsets.js\"); \
      ">> $COUCH_SCRIPT/couch_tests.js
fi
 
echo "Done."