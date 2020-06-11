#!/bin/sh

tsearch=$HOME/Scripts/pytools/tsearch/tsearch.sh

clip_option=$(xclip -selection c -o)

term=$(echo $clip_option | dmenu -p "Search:" -i)

if [ -n "$term" ]; then
    $tsearch -t "$term"
fi