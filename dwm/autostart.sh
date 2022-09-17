#!/bin/bash

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}


# Network Manager
#
nm-applet --indicator &

# Notifications
#
/usr/bin/dunst &

# Compositor
#
# picom --experimental-backends &

# Background wallpaper
#
feh --bg-fill ~/Pictures/Akatsuki.jpg
# feh --bg-fill /usr/share/endeavouros/backgrounds/endeavouros-wallpaper.png
# Low Battery Notifier
#
~/.dwm/scripts/low_bat_notifier.sh &

# Polkit
#
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# Statusbar utils
#
# .cargo/bin/rsblocks &
slstatus &

# Easyeffects
#
easyeffects --gapplication-service &
