# Startup file for i3wm
# Created by Wout on 13/01/2017
#
# Load belgium keymap
setxkbmap be
# Load Xresources
xrdb ~/.Xresources
# Set screen resolution for VM
xrandr --output Virtual-1 --mode 1680x1050
# Start i3
exec i3
