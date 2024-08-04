#!/bin/bash
# ===============================
# Enhanced Introduction Script for .bash File
# Author: [Your Name]
# Date: [Today's Date]
# Description: This script demonstrates
# basic bash commands, loops, and conditional statements.
# ===============================

echo "Welcome to the Enhanced Bash File Introduction Script!"
echo "This script will show you some basic commands, loops, and conditional statements."

# Display the current date and time
echo "The current date and time is:"
date

# List the files in the current directory
echo "Listing the files in the current directory:"
ls -l

# Create a new directory
echo "Creating a new directory named 'DemoDir'"
mkdir DemoDir

# Navigate into the new directory
echo "Navigating into 'DemoDir'"
cd DemoDir

# Create multiple text files using a loop
echo "Creating multiple text files using a loop"
for i in {1..5}
do
    echo "This is example file $i." > example$i.txt
done

# Display the contents of the text files
echo "Displaying the contents of the text files"
for i in {1..5}
do
    echo "Contents of example$i.txt:"
    cat example$i.txt
done

# Conditional statements to check file existence
echo "Checking if example1.txt exists"
if [ -f example1.txt ]; then
    echo "example1.txt exists"
else
    echo "example1.txt does not exist"
fi

# Navigate back to the previous directory
echo "Navigating back to the previous directory"
cd ..

# Delete the newly created directory and files
echo "Deleting 'DemoDir' and its contents"
rm -r DemoDir

echo "Bash script execution completed."
