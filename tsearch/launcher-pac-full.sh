#!/bin/sh

TSEARCH=$HOME/Scripts/pytools/tsearch/tsearch.sh

CLIP_OPTION=$(xclip -selection c -o)

ENGINE_CHOICES="pacman\naur"

PROGRAM_CHOICES="terminal\nxterm"

PROGRAM=$(echo -e "$PROGRAM_CHOICES" | dmenu -p "Program:" -i)

ENGINE=$(echo -e "$ENGINE_CHOICES" | dmenu -p "Engine:" -i)

TERM=$(echo $CLIP_OPTION | dmenu -p "Search:" -i)

if [ -n "$TERM" ]; then
    $PROGRAM -hold -e $TSEARCH -e $ENGINE -t "$TERM"
fi