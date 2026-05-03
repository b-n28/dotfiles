#!/usr/bin/env dash
LAYOUT=$(mmsg -g -l | grep "^DP-1" | awk '{print $3}')

echo "[$LAYOUT]"
