#!/bin/bash
set -e

echo "$@"

if [ "$1" = 'hoodie' ]; then
  # we need to set the permissions here because docker mounts volumes as root
#  sudo chown -R xroot:xroot \
#    /src 
  HOME=/src exec hoodie "$@"
fi

exec hoodie "$@"
