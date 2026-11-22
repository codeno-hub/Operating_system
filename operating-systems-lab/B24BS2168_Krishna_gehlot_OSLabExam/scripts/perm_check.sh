#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: ./perm_check.sh <filename>"
    exit 1
fi

filename="$1"

if [ ! -f "$filename" ]; then
    echo "File not found"
    exit 1
fi

permission=$(stat -c '%a' "$filename")

echo "File: $filename"
echo "Permission: $permission"

if [ "$permission" -eq 600 ] || [ "$permission" -eq 700 ]; then
    echo "Status: PRIVATE"
elif [ "$permission" -eq 644 ]; then
    echo "Status: SHARED-READ"
else
    echo "Status: REVIEW"
fi

