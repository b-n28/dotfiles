#!/bin/sh

if [ "$(bspc config -d focused window_gap)" -eq 0 ]; then
    bspc config -d focused border_width 1
    
else
    bspc config -d focused border_width 2
fi
