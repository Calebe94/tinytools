#!/bin/bash 

CONFIG=~/Scripts/pytools/tsearch/list.config

# DEFAULT SEARCH PARAMS
PROGRAM=$(awk '/^default/ && $2=="program" {print $3}' $CONFIG)
ENGINE=$(awk '/^default/ && $2=="engine" {print $3}' $CONFIG)
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
    QUERY=$(awk -v selected_engine="$1" '/^engine/ && $2==selected_engine {print $3}' $CONFIG)
    echo "${QUERY/TERM/$TERM}"
}

case "$ENGINE" in
    pacman | apt | aur) $(create_query $ENGINE) ;;
    *) $PROGRAM $(create_query $ENGINE) ;;
esac
