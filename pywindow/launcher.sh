#!/bin/bash

PYWINDOW=$HOME/Scripts/pytools/pywindow/pywindow.py

chosen=$($PYWINDOW $1 | dmenu -p "Window:" -i)

echo $chosen

$PYWINDOW -f "$chosen"