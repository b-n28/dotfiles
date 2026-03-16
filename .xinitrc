#!/bin/sh
export QT_QPA_PLATFORMTHEME=qt6ct

eval $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)

xrandr --output DP-1 --primary --mode 2560x1440 -r 165 \
       --output HDMI-1 --mode 1920x1080 -r 60 --left-of DP-1

xrdb ~/.Xresources
xsetroot -cursor_name left_ptr &

export SSH_AUTH_SOCK
export GNOME_KEYRING_CONTROL
export GNOME_KEYRING_PID

flameshot &
dunst & 
exec bspwm
