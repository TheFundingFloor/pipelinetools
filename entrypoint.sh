#!/bin/sh
set -e

if [ "${1:0:1}" = 'http' ]; then
    set -- http "$@"
  fi
  if [ "$1" = 'jq' ]; then
        exec  jq "$@"
      fi
  
exec "$@"
