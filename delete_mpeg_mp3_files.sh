#! /bin/bash
#Function to delete file with "mpeg" or "mp3" extension from the specified directory

delete_mpeg_mp3_files(){
    local dir=$1
    find $dir -type f -name "*.mpeg" -o -name "*.mp3" -delete
}

# Prompt for the username
read -p "Enter the username: " username

# check if the user exists
if id "$username" >/dev/null 2>&1; then
    echo "User exists"
    # check if the home directory exists
    if [ -d "/home/$username" ]; then
        echo "Home directory exists"
        delete_mpeg_mp3_files "/home/$username"
        echo "Files deleted successfully"
    else
        echo "Home directory does not exist"
        exit 1
    fi
else
    echo "User does not exist"
    exit 1
fi