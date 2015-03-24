#!/bin/bash
set -e

if [ "$1" = 'hoodie' ]; then
  # we need to set the permissions here because docker mounts volumes as root
  chown -R xroot:xroot \
    /src 
fi

