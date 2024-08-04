# !/bin/bash

# Define the folder path
folder_path="/home/vagrant/numeric_files"

# check if the folder exists
if [ ! -d "$folder_path" ]; then
    echo "Error: Folder does not exist"
    exit 1
fi

# move to the folder
cd "$folder_path"

echo "Deleting files with numeric extensions... in $folder_path"
# delete the numeric files
find . -type f -name "*[0-9]*" -delete
echo "Numeric files deleted successfully"

echo "Done!"