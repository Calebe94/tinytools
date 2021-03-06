# twindow
A simple python script using dmenu and i3ipc module to list all opened windows in i3wm and be able to focus on the one selected.

## Dependencies
- Python 3.x
  - i3ipc module
- i3wm

### python + dmenu = :heart_eyes:
This script supports dmenu as a wrapper interface for quick access, anywhere, anytime.
Since it was initially designed to work with dmenu, it's highly suggested for you to try.

## Usage

### Command Line Interface
For the default listing (list opened windows in all workspaces), run:
```
./twindow.py
```
You can also list the opened windows only in the current workspace:
```
./twindow.py -c
```
To list the opened workspaces:
```
./twindow.py -w
```
And to simply show the current workspace you are in, run:
```
./twindow.py -c -w
```

To focus on a specific window:
```
./twindow.py -f WINDOW_NAME
```

### dmenu Interface
Once o have dmenu installed, execute the simple bash scripts:
```
./launcher.sh
```

