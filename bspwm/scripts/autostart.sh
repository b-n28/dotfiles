#!/bin/sh

pgrep -x polkit-gnome-au > /dev/null || /usr/libexec/polkit-gnome-authentication-agent-1 &
pgrep -x xcompmgr > /dev/null || xcompmgr &

gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
feh --bg-scale /home/borna/Pictures/walls/wall1.jpg &

bspc rule -a "discord" --one-shot desktop=^1 follow=off
/usr/lib/discord/Discord --enable-features=VaapiVideoDecoder,VaapiVideoEncoder,AcceleratedVideoEncoder --ignore-gpu-blocklist --enable-gpu-rasterization --enable-zero-copy --use-gl=desktop --disable-features=UseChromeOSDirectVideoDecoder &

pgrep -x steam > /dev/null || steam -silent %U &
pgrep -x supersonic-desktop > /dev/null || supersonic-desktop &

