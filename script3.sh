#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Ashutosh

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================"
echo "      Directory Audit Report"
echo "======================================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo ""
echo "Checking Python directory..."

if [ -d "/usr/lib/python3" ]; then
    PERMS=$(ls -ld /usr/lib/python3 | awk '{print $1, $3, $4}')
    echo "/usr/lib/python3 => Permissions: $PERMS"
else
    echo "Python directory not found"
fi
