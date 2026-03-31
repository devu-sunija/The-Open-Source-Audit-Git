#!/bin/bash
# Script 4: Network Connectivity Auditor
# Author: Devu S

TARGET="google.com"

echo "--- Network Connectivity Test ---"

# 1. Check Local IP Address
LOCAL_IP=$(hostname -I | awk '{print $1}')
echo "Local IP Address: $LOCAL_IP"

# 2. Ping Test (checks if internet is working)
echo "Testing connection to $TARGET..."
if ping -c 3 $TARGET > /dev/null 2>&1; then
    echo "STATUS: Internet Connection is ACTIVE."
else
    echo "STATUS: Internet Connection is DOWN."
    echo "Tip: Check your VirtualBox Network Settings (Bridge or NAT)."
fi

# 3. Philosophy Note
echo "--------------------------------"
echo "Philosophy: Open source thrives on a connected, global network."
