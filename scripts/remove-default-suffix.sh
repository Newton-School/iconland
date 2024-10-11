#!/bin/bash

# This script removes the '-default' suffix from all .svg files in the seeds directory.
# To use, please provide execute permission to the script using the command:
# chmod +x remove-default-suffix.sh

# Change to the seeds directory
cd ../seeds || exit

# Iterate over all .svg files in the seeds directory
for file in *.svg; do
    # Check if the file name ends with '-default.svg'
    if [[ "$file" == *-default.svg ]]; then
        # Remove the '-default' suffix from the file name
        new_name="${file%-default.svg}.svg"
        # Rename the file
        mv "$file" "$new_name"
    fi
done