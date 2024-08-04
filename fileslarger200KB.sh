#!/bin/bash
# ===============================
# Script to Find Files Larger Than 200 KB in Home Directory
# Author: [Your Name]
# Date: [Today's Date]
# Description: This script finds and displays
# all files in the home directory that are larger than 200 KB
# and stores their names in a file named 'large_files.txt'.
# ===============================

# Define the output file
output_file="large_files.txt"

# Clear the output file if it exists or create it if it doesn't
> $output_file

# Find and process files larger than 200 KB
echo "Finding files larger than 200 KB in the home directory..."
find $HOME -type f -size +200k -print | while read file; do
    echo "File: $file"
    echo "$file" >> $output_file
done

# Display completion message
echo "Search completed. File names are stored in $output_file."
