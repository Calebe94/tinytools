#!/bin/bash

LIST=$1
YAML_PARSER=$HOME/.dotfiles/scripts/dmenu-builder/parse_yaml.sh

function parse_yaml {
   local prefix=$2
   local s='[[:space:]]*' w='[a-zA-Z0-9_]*' fs=$(echo @|tr @ '\034')
   sed -ne "s|^\($s\):|\1|" \
        -e "s|^\($s\)\($w\)$s:$s[\"']\(.*\)[\"']$s\$|\1$fs\2$fs\3|p" \
        -e "s|^\($s\)\($w\)$s:$s\(.*\)$s\$|\1$fs\2$fs\3|p"  $1 |
   awk -F$fs '{
      indent = length($1)/2;
      vname[indent] = $2;
      for (i in vname) {if (i > indent) {delete vname[i]}}
      if (length($3) > 0) {
         vn=""; for (i=0; i<indent; i++) {vn=(vn)(vname[i])("_")}
         printf("%s%s%s=\"%s\"##", "'$prefix'",vn, $2, $3);
      }
   }'
}

# RAW_YAML=$(parse_yaml $LIST)
# PARSED_YAML=${RAW_YAML//##/\\n} #Certifica queba de linha
# echo -e $PARSED_YAML

PARSED_YAML=$($YAML_PARSER $LIST)
echo -e $PARSED_YAML

PROMPT=$(awk -F": " '/^prompt/{print $NF}' $LIST)
choices=$(echo -e $PARSED_YAML | awk -F_ '/option/{print $2}')

chosen=$(echo -e "$choices" | dmenu -i -fn "undefined" -p "$PROMPT")

RESULT=$(echo -e $PARSED_YAML | awk -v chosen="$chosen" -F= '/'"$chosen"'/{print $NF}')

COMMAND=${RESULT//'"'}
$COMMAND
