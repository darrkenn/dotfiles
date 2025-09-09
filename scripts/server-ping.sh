#!/usr/bin/bash

HOST=""

if ping -c1 -W1 "$HOST" &>/dev/null; then
  echo '{"text": "VPS: UP", "class": "up"}'
else
  echo '{"text": "VPS: DOWN", "class": "down"}'
fi
