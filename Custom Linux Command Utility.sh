#!/bin/bash

# Custom ls command
echo "Listing files in $(pwd):"
for file in *; do
    echo "$file"
done
