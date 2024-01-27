#!/bin/sh

xrandr --addmode DP3 2560x1440 && xrandr --output DP2 --scale 1x1 --mode 2560x1440 --output DP3 --mode 2560x1440 --scale 1x1 --right-of DP2
feh --randomize --bg-scale ~/Pictures/
setxkbmap -layout 'us,ru' -option 'grp:alt_shift_toggle,grp_led:scroll'
