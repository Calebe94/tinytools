#!/bin/sh

TSEARCH=$HOME/Scripts/pytools/tsearch/tsearch.sh

CLIP_OPTION=$(xclip -selection c -o)

ENGINE_CHOICES="google\nduckduckgo\nyoutube"

PROGRAM_CHOICES="firefox\nqutebrowser\ngoogle-chrome-stable"

PROGRAM=$(echo -e "$PROGRAM_CHOICES" | dmenu -p "Program:" -i)

ENGINE=$(echo -e "$ENGINE_CHOICES" | dmenu -p "Engine:" -i)

TERM=$(echo $CLIP_OPTION | dmenu -p "Search:" -i)

if [ -n "$TERM" ]; then
    $TSEARCH -p $PROGRAM -e $ENGINE -t "$TERM"
fi