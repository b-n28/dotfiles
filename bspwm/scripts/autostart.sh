#!/bin/sh

pgrep -x polkit-gnome-au > /dev/null || /usr/libexec/polkit-gnome-authentication-agent-1 &
pgrep -x picom > /dev/null || picom --config ~/.config/picom/picom.conf &

gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
feh --bg-scale /home/borna/Pictures/walls/wall1.jpg &

bspc rule -a "discord" --one-shot desktop=^1 follow=off
discord &

pgrep -x steam > /dev/null || steam -silent %U &
pgrep -x supersonic-desktop > /dev/null || supersonic-desktop &
pgrep -x nicotine > /dev/null || nicotine -s &
pgrep -x gpu-screen-recorder || flatpak run com.dec05eba.gpu_screen_recorder gsr-ui &
