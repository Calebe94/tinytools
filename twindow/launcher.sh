#!/bin/bash

TWINDOW=$HOME/Scripts/pytools/twindow/twindow.py

if [ -z "$1" ]; then
  PROMPT="All Windows"
else
  PROMPT=$($TWINDOW -w $1)
  echo "$PROMPT"
fi

chosen=$($TWINDOW $1 | dmenu -p "$PROMPT:" -i)

echo $chosen

$TWINDOW -f "$chosen"