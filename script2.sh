#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Ashutosh

PACKAGE="python3"

echo "Checking package: $PACKAGE"
echo "---------------------------"

if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed ✅"
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed ❌"
fi

echo ""
echo "Package Description:"
echo "--------------------"

case $PACKAGE in
    python3)
        echo "Python is an open-source programming language widely used in AI, web development, and automation."
        ;;
    git)
        echo "Git is a distributed version control system."
        ;;
    *)
        echo "Unknown package."
        ;;
esac
