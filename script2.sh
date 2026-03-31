#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Devu S

PACKAGE="git"

echo "Checking system for: $PACKAGE"

# Check if installed using dpkg (standard for Kali/Debian)
if dpkg -l | grep -q "^ii  $PACKAGE "; then
    echo "STATUS: $PACKAGE is installed."
    # Show version and summary
    dpkg -s $PACKAGE | grep -E 'Version|Description'
else
    echo "STATUS: $PACKAGE is NOT installed."
    echo "Tip: Use 'sudo apt install $PACKAGE -y' to install it."
fi

# Case statement for philosophy note as required by project
case $PACKAGE in
    git)
        echo "Philosophy: Git enables distributed collaboration without a central authority."
        ;;
    *)
        echo "Philosophy: This is an essential open-source building block."
        ;;
esac
