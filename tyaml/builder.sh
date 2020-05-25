#!/bin/bash

list=$1
yaml_parser=$HOME/Scripts/pytools/tyaml/parse_yaml.sh

#get yaml values
parsed_yaml=$($yaml_parser $list)

prompt=$(echo -e "$parsed_yaml"| awk -F= '/^prompt/{print $NF}')
prompt=${prompt//'"'}
options=$(echo -e "$parsed_yaml" | awk -F_ '/option/{print $2}')

#list options on dmenu and return chosen option
dmenu_chosen=$(echo -e "$options" | dmenu -i -fn "undefined" -p "$prompt")

#get the especific command related to chosen option
chosen_command=$(echo -e "$parsed_yaml" | awk -F= '/'"$dmenu_chosen"'/{print $NF}')
chosen_command=${chosen_command//'"'}

$chosen_command
