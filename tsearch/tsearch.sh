#!/bin/bash 

search_params=$HOME/Scripts/pytools/tsearch/params.yaml
parse=$HOME/Scripts/pytools/tyaml/parse_yaml.sh

program=$($parse $search_params default.program)
engine=$($parse $search_params default.engine)
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
    query=$($parse $search_params "$engine".query)
    echo "${query/TERM/$term}"
}

command=$($parse $search_params "$program".command)
$command $(get_query $engine)
