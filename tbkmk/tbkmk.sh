#!/bin/sh

url="$@"

FILE=/home/calebe94/Packages/tinytools/tbkmk/bookmarks.yml

get_website_title()
{
    wget -qO- $1 | gawk -v IGNORECASE=1 -v RS='</title' 'RT{gsub(/.*<title[^>]*>/,"");print;exit}'
}

while getopts a:d:h option
do
    case "${option}" in
        a)
            get_website_title ${OPTARG}
            ;;
        d)
            entry="$(get_website_title ${OPTARG}):${OPTARG}"
            sed -i "/$entry/d" "$FILE"
            ;;
        h | *)
            echo "help"
            ;;
    esac
done
