#!/bin/sh

CLIP_OPTION=$(xclip -selection c -o)

TERM=$(echo $CLIP_OPTION | dmenu -p "Search:" -i)

QUERY="https://duckduckgo.com/?q="

# if [ $TERM == "$CLIP_OPTION" ]; then
#     TERM=$(xclip -selection c -o)
# fi

if [ -n "$TERM" ]; then
    qutebrowser "$TERM"
fi
# if [ -n "$TERM" ]; then
#     if [[ $TERM == *".com"* ]]; then
#         qutebrowser $TERM
#     else
#         qutebrowser $QUERY${TERM// /+}
#     fi 
# fi