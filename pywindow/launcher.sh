#!/bin/sh

PYWINDOW=$HOME/Scripts/pytools/pywindow/pywindow.py

if [ "$1" == "-w" ]; then
    chosen=$($PYWINDOW -w | dmenu -p "Current Window:" -i)
else
    chosen=$($PYWINDOW | dmenu -p "Window:" -i)
fi

echo $chosen

$PYWINDOW -f "$chosen"