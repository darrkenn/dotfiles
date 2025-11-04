#!/bin/bash

if [ -n "$1" ]; then
  echo "$1"
  chmod -R o+r "$1"
  find "$1" -type -d -exec chmod o+rx {} +
else
  echo "No directory provided"
fi
