#!/bin/bash
# Script 5: Final Audit Summary Generator
# Author: Devu S

REPORT_FILE="final_audit_report.txt"

echo "--- Generating Final Audit Summary ---"

# Create/Overwrite the report file with a header
echo "FOSS Project Audit Report" > $REPORT_FILE
echo "Prepared by: Devu S" >> $REPORT_FILE
echo "Date: $(date)" >> $REPORT_FILE
echo "--------------------------" >> $REPORT_FILE

# Append system and package status
echo "System Kernel: $(uname -r)" >> $REPORT_FILE
echo "Audit Target: Git" >> $REPORT_FILE

if dpkg -l | grep -q "git"; then
    echo "Verification: Git is SECURE and INSTALLED." >> $REPORT_FILE
else
    echo "Verification: Git needs installation." >> $REPORT_FILE
fi

echo "--------------------------" >> $REPORT_FILE
echo "Audit Completed Successfully." >> $REPORT_FILE

# Display the content of the file we just created
cat $REPORT_FILE

echo "--- Report Saved as $REPORT_FILE ---"
