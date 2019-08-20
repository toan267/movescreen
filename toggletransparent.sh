#!/bin/sh

CONFIG_FILE=~/.config/xfce4/terminal/terminalrc
OLD_VALUE=`sed -n 's/BackgroundDarkness=\(.*\)/\1/p' $CONFIG_FILE`

case $OLD_VALUE in
0.4)   NEW_VALUE=0.8  ;;
0.8)   NEW_VALUE=1 ;;
1)  NEW_VALUE=0.4  ;;
*)    NEW_VALUE=1 ;;
esac

sed -i  "s/BackgroundDarkness.*/BackgroundDarkness=$NEW_VALUE/" $CONFIG_FILE
