#!/bin/sh

/home/borna/.cargo/bin/wayfreeze &

sleep 0.1
grim -g "$(slurp)" - | wl-copy
killall wayfreeze
