# Movescreen
This Python script moves the window with focus on an adjacent monitor. It is intendend for window managers lacking this shortcut like XFCE. It can also move the mouse cursor.

## Usage

`movescreen.py <up|down|left|right|prev|next|fit> [win_id|mouse]`

First argument is the direction of the monitor in which the active window will be moved. `next` and `prev` will cycle through the list of monitors in `xrandr` order. 'fit' will reduce or move the window in the center of its monitor so it gets fully visible.

Instead of the active window, id of another window or `mouse` can be specified.

It should be compatible with Python 2.7 and 3.

## XFCE setup
Copy `movescreen.py` in `/usr/local/bin`, then:

`chmod a+rx /usr/local/bin/movescreen.py`

Go to *Setting* -> *Keyboard* -> *Application shortcuts* then add one shortcut for each direction:

| Command | Shortcut |
| :------ | :------- |
| /usr/local/bin/movescreen.py left  | Ctrl+Super+Left  |
| /usr/local/bin/movescreen.py right | Ctrl+Super+Right |
| /usr/local/bin/movescreen.py fit   | Ctrl+Super+Space |


## Depends on
 - `python`
 - `xrandr`
 - `xwininfo` (xorg-xwininfo đối với manjaro)
 - `wmctrl` (not installed by default on Ubuntu, try `sudo apt-get install wmctrl` )
 - `xdotool` (for mouse cursor)

## How does it work?
The script scans for the list of monitors and check their relative positions.

It gather information about the current active window (size, position and flags). It also find on which monitor the window has the biggest area.

Depending on the argument, it moves the window on the selected adjacent monitor (if any) and restore the previously set flags.


## Drawback
A little bit slow the first time it is run.

Only tested with two monitors.


## Author and licence

Antoine Calando - 2017 - Public domain.
