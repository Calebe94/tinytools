#!/bin/bash

TSEARCH=$HOME/Scripts/pytools/tsearch/tsearch
parse=$HOME/Scripts/pytools/tyaml/tyaml

CONFIG=$HOME/Scripts/pytools/tsearch/params.yaml

ENGINE_OPTION=">> CHANGE ENGINE"
PROGRAM_OPTION=">> CHANGE PROGRAM"
CLIP_OPTION=$(echo $(xclip -selection c -o))

ENGINE_CHOICES=$($parse $CONFIG -k engine)
PROGRAM_CHOICES=$($parse $CONFIG -k program)

PROMPT=$($parse $CONFIG -v default.engine)
COMMAND=$TSEARCH
IS_SPECIAL_INPUT=1

if [ -n "$1" ]; then
    PROMPT=$1   
    ENGINE=$1
    COMMAND="$COMMAND -e $ENGINE"
fi

main(){
    while [ $IS_SPECIAL_INPUT == 1 ]; do
        TERM=$(echo -e "$CLIP_OPTION\n$ENGINE_OPTION\n$PROGRAM_OPTION" | dmenu -p "$PROMPT:" -i)
        case "$TERM" in 
            "$ENGINE_OPTION") 
                SELECTED_ENGINE=$(echo -e "$ENGINE_CHOICES" | dmenu -p "Engine:" -i -l 10)
                if [ -n "$SELECTED_ENGINE" ]; then
                    ENGINE="$SELECTED_ENGINE"
                    PROMPT="$ENGINE"
                    COMMAND="$COMMAND -e $ENGINE"
                fi
                IS_SPECIAL_INPUT=1
            ;;
            "$PROGRAM_OPTION") 
                SELECTED_PROGRAM=$(echo -e "$PROGRAM_CHOICES" | dmenu -p "Program:" -i)
                if [ -n "$SELECTED_PROGRAM" ]; then
                    COMMAND="$COMMAND -p $PROGRAM"
                fi
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
