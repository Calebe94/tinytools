#!/bin/bash 

####################################################################################################
# VARIABLES 
####################################################################################################
TYAML=$(pwd)/tyaml
MENU_CONFIG_PATH=$(pwd)/menu.yaml
TYAML_COMMAND="$TYAML $MENU_CONFIG_PATH"

####################################################################################################
# Functions
####################################################################################################

function remove_commands 
{
    awk -F : '{print $1}'
}

function get_command
{
    awk -F : /"$1"/'{print $2}'
}

function get_only_tags
{
    awk -F . '{print $2}' | uniq
}

####################################################################################################
# Execute dmenu for the first time
####################################################################################################

#           execute tyaml             remove commands   get only tags            pipe to dmenu
selected=$($TYAML $MENU_CONFIG_PATH | remove_commands | get_only_tags | dmenu -p "Menu")

if [[ ! -z $selected ]]; 
then
    command=$($TYAML_COMMAND | get_command $selected)
    [ "${command[@]}" != "null" ] && eval "${command[@]}" &
    exit 1
fi
