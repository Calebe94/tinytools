#!/bin/bash

TSEARCH=$HOME/Scripts/pytools/tsearch/tsearch.sh

ENGINE_OPTION="[*] CHANGE ENGINE"
PROGRAM_OPTION="[*] CHANGE PROGRAM"
CLIP_OPTION=$(xclip -selection c -o)

ENGINE_CHOICES="google\nduckduckgo\nyoutube\nnetflix\nwikipedia"
PROGRAM_CHOICES="firefox\nqutebrowser\ngoogle-chrome-stable"

PROMPT="tsearch"
COMMAND=$TSEARCH
IS_SPECIAL_INPUT=1

main(){
    while [ $IS_SPECIAL_INPUT == 1 ]; do
        TERM=$(echo -e "$CLIP_OPTION\n$ENGINE_OPTION\n$PROGRAM_OPTION" | dmenu -p "$PROMPT:" -i)
        case "$TERM" in 
            "$ENGINE_OPTION") 
                ENGINE=$(echo -e "$ENGINE_CHOICES" | dmenu -p "Engine:" -i)
                PROMPT="$ENGINE"
                COMMAND="$COMMAND -e $ENGINE"
                IS_SPECIAL_INPUT=1
            ;;
            "$PROGRAM_OPTION") 
                PROGRAM=$(echo -e "$PROGRAM_CHOICES" | dmenu -p "Program:" -i)
                COMMAND="$COMMAND -p $PROGRAM"
                IS_SPECIAL_INPUT=1
            ;;
            *)
                IS_SPECIAL_INPUT=0
            ;;
        esac
    done
    if [ -n "$TERM" ]; then
        $COMMAND -t "$TERM"
    fi
}

main
