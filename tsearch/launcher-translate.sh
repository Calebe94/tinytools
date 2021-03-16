#Copyright (C) 2021 TinyTools
#
#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#!/bin/sh

TSEARCH=$HOME/Scripts/pytools/tsearch/tsearch.sh

CLIP_OPTION=$(xclip -selection c -o)

LANG=$(cat lang.txt | dmenu -p "Language:" -i)

ENGINE=$(echo -e "$ENGINE_CHOICES" | dmenu -p "Engine:" -i)

TERM=$(echo $CLIP_OPTION | dmenu -p "Search:" -i)

if [ -n "$TERM" ]; then
    $TSEARCH -p $PROGRAM -e $ENGINE -t "$TERM"
fi