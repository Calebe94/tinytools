#!/bin/sh

TSEARCH=$HOME/Scripts/pytools/tsearch/tsearch.sh

CLIP_OPTION=$(xclip -selection c -o)

LANG=$(cat lang.txt | dmenu -p "Language:" -i)

ENGINE=$(echo -e "$ENGINE_CHOICES" | dmenu -p "Engine:" -i)

TERM=$(echo $CLIP_OPTION | dmenu -p "Search:" -i)

if [ -n "$TERM" ]; then
    $TSEARCH -p $PROGRAM -e $ENGINE -t "$TERM"
fi