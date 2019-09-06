#!/bin/sh

TSEARCH=$HOME/Scripts/pytools/tsearch/tsearch.sh

CLIP_OPTION=$(xclip -selection c -o)

TERM=$(echo $CLIP_OPTION | dmenu -p "Search:" -i)

if [ -n "$TERM" ]; then
    $TSEARCH -t "$TERM"
fi