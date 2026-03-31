#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Ashutosh

echo "======================================"
echo " Open Source Manifesto Generator"
echo "======================================"

read -p "Enter an open-source tool: " TOOL
read -p "What does freedom mean to you? " FREEDOM
read -p "What would you like to build? " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "On $DATE, I believe in open source." > $OUTPUT
echo "Using tools like $TOOL, I experience $FREEDOM." >> $OUTPUT
echo "I want to build $BUILD and share it freely." >> $OUTPUT
echo "Open source promotes collaboration and transparency." >> $OUTPUT

echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
