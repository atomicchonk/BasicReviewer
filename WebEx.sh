#!/bin/bash

HOSTNAME=$(hostname)


LOCAL_IP=$(ipconfig getifaddr en0 2>/dev/null)

if [ -z "$LOCAL_IP" ]; then
  LOCAL_IP=$(ipconfig getifaddr en1 2>/dev/null)
fi

if [ -f "webex-installer.sh ]; then
  echo "Hostname: $HOSTNAME"
  echo "Local IP: $LOCAL_IP"
fi
