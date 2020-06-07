#!/bin/bash 

####################################################################################################
# VARIABLES 
####################################################################################################
TYAML=$(pwd)/tyaml
MENU_CONFIG_PATH=$(pwd)/menu.yaml
TYAML_COMMAND="$TYAML $MENU_CONFIG_PATH"

####################################################################################################
# Execute dmenu for the first time
####################################################################################################

#           execute tyaml             remove commands         get only tags            pipe to dmenu
selected=$($TYAML $MENU_CONFIG_PATH | awk -F : '{print $1}' | awk -F . '{print $2}' | dmenu)

# Check to see if the selected option has a sub option
[ -z $($TYAML_COMMAND | awk -F '.' /$selected/'{print $3}') ] && echo "empty" ||  $TYAML_COMMAND | awk -F ':' '{print $1}' | awk -F '.' /$selected/'{print $3}'

# Execute command.