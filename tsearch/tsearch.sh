#!/bin/sh

# DEFAULT SEARCH PARAMS
PROGRAM="google-chrome-stable"
ENGINE="duckduckgo"
LANG="en"

while getopts p:e:t:l option
do
case "${option}"
in
p) PROGRAM=${OPTARG};;
e) ENGINE=${OPTARG};;
t) RAW_TERM=${OPTARG};;
l) LANG=${OPTARG}
esac
done

TERM=${RAW_TERM// /+}

create_query(){
    case "$1" in
        duckduckgo) QUERY="https://www.duckduckgo.com/?q=$TERM" ;;
        google) QUERY="https://www.google.com/search?q=$TERM" ;;
        youtube) QUERY="https://www.youtube.com/results?search_query=$TERM" ;;
        pacman) QUERY="sudo pacman -S $RAW_TERM" ;;
        apt) QUERY="sudo apt-get $RAW_TERM" ;;
        aur) QUERY="yaourt $RAW_TERM" ;;
        translate) QUERY="https://translate.google.com/?sl=auto&tl=$LANG&text=$TERM" ;;
        # wikipedia) to be implemented
        *) echo "ENGINE NOT SUPPORTED" ;;
    esac
    echo "$QUERY"
}

case "$ENGINE" in
    pacman | apt | aur) $(create_query $ENGINE) ;;
    *) $PROGRAM $(create_query $ENGINE) ;;
esac