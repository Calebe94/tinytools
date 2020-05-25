#!/bin/bash 

search_params=~/Scripts/pytools/tsearch/params.yaml

yaml_parser=$HOME/Scripts/pytools/tyaml/parse_yaml.sh

program=$($yaml_parser $search_params default_program)
engine=$($yaml_parser $search_params default_engine)
lang="en"

while getopts p:e:t:l option
do
case "${option}"
in
p) program=${OPTARG};;
e) engine=${OPTARG};;
t) raw_term=${OPTARG};;
l) lang=${OPTARG}
esac
done

term=${raw_term// /+}

get_query(){
    query=$($yaml_parser $search_params "$engine"_query)
    echo "${query/TERM/$term}"
}

command=$($yaml_parser $search_params "$program"_command)

# case "$engine" in
    # pacman | apt | aur) $(create_query $ENGINE) ;;
    $command $(get_query $engine)
# esac
