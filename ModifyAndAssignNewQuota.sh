#!/bin/bash
# ===============================
# Script to Check and Modify Quota for a User
# Author: [Your Name]
# Date: [Today's Date]
# Description: This script checks the current quota
# and assigns a new quota for a user in Unix/Linux.
# ===============================

# User whose quota needs to be checked and modified
USER="username"

# Define new quota limits (blocks in KB and inodes)
BLOCK_SOFT_LIMIT=1024000  # Soft limit in KB (1GB)
BLOCK_HARD_LIMIT=1048576  # Hard limit in KB (1GB + 64MB)
INODE_SOFT_LIMIT=50000    # Soft limit on the number of inodes (files)
INODE_HARD_LIMIT=55000    # Hard limit on the number of inodes

# Check current quota
echo "Checking current quota for user $USER..."
quota -u $USER

# Modify and assign new quota
echo "Assigning new quota for user $USER..."
setquota -u $USER $BLOCK_SOFT_LIMIT $BLOCK_HARD_LIMIT $INODE_SOFT_LIMIT $INODE_HARD_LIMIT /

# Verify new quota
echo "New quota for user $USER has been set. Verifying..."
quota -u $USER
