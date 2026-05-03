#!/usr/bin/env dash

OPTIONS="Tiled\nScroller - Horizontal\nScroller - Vertical\nGrid\nMonocle"

SELECTED=$(echo "$OPTIONS" | wofi --conf ~/.config/wofi/layouts.conf --dmenu -p "Layout:")

#SELECTED=$(echo "$OPTIONS" | rofi -dmenu -p "Layout" -kb-accept-entry Return,Control+j -kb-row-up k,Up -kb-row-down j,Down -no-custom -filter "" -disable-history -no-require-match -select 0 -auto-select -matching normal -sort false)

case "$SELECTED" in
    "Tiled") LAYOUT="T" ;;
    "Scroller - Horizontal") LAYOUT="S" ;;
    "Scroller - Vertical") LAYOUT="SV" ;;
    "Grid") LAYOUT="G" ;;
    "Monocle") LAYOUT="M" ;;
    *) exit 0 ;;
esac

mmsg -o "DP-1" -l "$LAYOUT"
