# windowSwitch.py

A simple python script using dmenu and i3ipc module to list all opened windows in i3wm and be able to focus on the one selected.

## Dependencies
- Python 3.x
  - i3ipc module
- i3wm
- dmenu

## Usage
For the default listing (list opened windows in all workspaces), run:
```
python3 windowSwitch.py
```
You can also list the opened windows only in the current workspace:
```
python3 windowSwitch.py -w
```
