#!/bin/bash

read -s -p "Password: " PW
echo

EXPECTED_HASH="12b46ffa5137f246f71c3bfeda9fbbee36c8209de9ebbdf80d834b20b5d4c61c"
INPUT_HASH=$(printf "%s" "$PW" | shasum -a 256 | awk '{print $1}'

if [[ "$INPUT_HASH" != "EXPECTED_HASH" ]]; then
    echo "Access denied"
    exit 1
fi

HOSTNAME=$(hostname)
LOCAL_IP=$(route get default 2>/dev/null | awk '/interface: / {print $2}' | xargs -I {} ipconfig getifaddr {} 2>/dev/null)

echo "Hostname: $HOSTNAME"
echo "Local IP: $LOCAL_IP"
