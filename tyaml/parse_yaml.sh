#!/bin/bash 

get_paths(){
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
         vn=""; for (i=0; i<indent; i++) {vn=(vn)(vname[i])(".")}
         printf("%s%s%s=\"%s\"\n", "'$prefix'",vn, $2, $3);
      }
   }'
}

get_value(){
   local paths=$1
   local path=$2
   local value=$(echo -e "$paths" | awk -F\" '/'$path'/{print $2}')
   echo $value
}

get_keys(){
   local paths=$1
   local path=$2
   local matched_paths=$(echo -e "$paths" | awk '/^'$path'/{print $0}' | awk -F"$path". '{print $2}' | awk -F. '{print $1}' | awk -F= '{print $1}')
   echo -e "$matched_paths"
}

yaml_paths=$(get_paths $1)

if [ -n "$2" ]; then
   if [ $2 == '-k' ]; then
      echo -e "$(get_keys "$yaml_paths" $3)"
   else
      echo -e "$(get_value "$yaml_paths" $2)"
   fi
else
   echo -e "$yaml_paths"
fi
