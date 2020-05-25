#!/bin/bash

list=$1
parse=$HOME/Scripts/pytools/tyaml/parse_yaml.sh

parsed_yaml=$($parse $list)

prompt=$($parse $list prompt)
options=$(echo -e "$parsed_yaml" | awk -F. '/option/{print $2}')

#list options on dmenu and return chosen option
dmenu_chosen=$(echo -e "$options" | dmenu -i -fn "undefined" -p "$prompt")

#get the especific command related to chosen option
chosen_command=$($parse $list "$dmenu_chosen")

$chosen_command
