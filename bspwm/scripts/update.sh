#!/usr/bin/env dash

output=$(flatpak update -y)

if echo "$output" | grep -q "Nothing to do."; then
    notify-send "Nothing to update."

else
    notify-send "Update complete."

fi
