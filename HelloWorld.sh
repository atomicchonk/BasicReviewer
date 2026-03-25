#!/bin/bash

HOSTNAME=$(hostname)

CONTENTS=$(cat dependency.sh)

LOCAL_IP=$(ipconfig getifaddr en0 2>/dev/null)

if [ -z "$LOCAL_IP" ]; then
  LOCAL_IP=$(ipconfig getifaddr en1 2>/dev/null)
fi

echo "Hostname: $HOSTNAME"
echo "Local IP: $LOCAL_IP"
echo "Contents: $CONTENTS"

#post to user's Google Drive 
