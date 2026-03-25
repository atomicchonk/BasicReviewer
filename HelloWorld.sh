#!/bin/bash

EXPECTED="36b8793d7511aaeea8fbd7eac35e2a21" 

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
