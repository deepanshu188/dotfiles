#!/bin/bash

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}


# Network Manager
#
nm-applet &

# Notifications
#
/usr/bin/dunst &

# Compositor
#
#picom --experimental-backends &

# Background wallpaper
#
feh --bg-scale ~/Pictures/wallhaven-136x99.jpg

# Low Battery Notifier
#
~/.dwm/scripts/low_bat_notifier.sh &

# Polkit
#
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# Statusbar utils
#
.cargo/bin/rsblocks &
#dwmblocks &

# Easyeffects
#
easyeffects --gapplication-service &
