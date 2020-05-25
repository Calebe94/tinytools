#!/bin/bash 

search_params=$HOME/Scripts/pytools/tsearch/params.yaml

yaml_parser=$HOME/Scripts/pytools/tyaml/parse_yaml.sh

parsed_params=$($yaml_parser $search_params)

# DEFAULT SEARCH PARAMS
get_values(){
    local yaml_file=$1
    local path=$2
    local value=$(echo -e "$yaml_file" | awk -F\" '/'$path'/{print $2}')
    echo $value
}
echo -e "$parsed_params"
program=$(get_values "$parsed_params" default_program)
echo --- $program ---