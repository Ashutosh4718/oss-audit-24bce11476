#!/bin/bash
# Script 4: Log File Analyzer
# Author: Ashutosh

LOGFILE=${1:-"/var/log/dpkg.log"}
KEYWORD=${2:-"install"}

COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found"
    exit 1
fi

echo "Analyzing file: $LOGFILE"
echo "Searching for keyword: $KEYWORD"

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo ""
echo "Keyword '$KEYWORD' found $COUNT times."

echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
