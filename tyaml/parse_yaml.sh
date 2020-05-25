#!/bin/bash 

path=''
prefix=''

# while getopts g:p option
# do
# case "${option}"
# in
# g) path=${OPTARG};;
# p) prefix=${OPTARG};;
# esac
# done

parse_yaml(){
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
         printf("%s%s%s=\"%s\"\n", "'$prefix'",vn, $2, $3);
      }
   }'
}

parsed_yaml=$(parse_yaml $1)

get_value(){
    local yaml_file=$1
    local path=$2
    local value=$(echo -e "$yaml_file" | awk -F\" '/'$path'/{print $2}')
    echo $value
}

if [ -n "$2" ]; then
   echo $(get_value "$parsed_yaml" $2)
else
   echo -e "$parsed_yaml"
fi
