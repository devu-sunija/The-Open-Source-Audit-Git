#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Devu S

# List of system directories to audit
DIRS=("/etc" "/var" "/home" "/tmp")

echo "--- Directory Audit Report ---"

# Use a for loop to check each directory (Unit 2 Requirement)
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "DIR: $DIR | Permissions: $PERMS | Size: $SIZE"
    else
        echo "Directory $DIR not found"
    fi
done
