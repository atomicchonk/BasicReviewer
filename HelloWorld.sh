#!/bin/bash

EXPECTED="5f4dcc3b5aa765d61d8327deb882cf99" 

if [[ -z "$1" ]]; then
    echo "Usage: $0 <value>"
    exit 1
fi

ACTUAL=$(echo -n "$1" | md5sum | awk '{print $1}')

if [[ "$ACTUAL" == "$EXPECTED" ]]; then
    echo "Match!"
else
    echo "No match."
fi
