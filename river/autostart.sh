#!/bin/bash
killall -q polkit-gnome-authentication-agent-1 waybar dunst nm-applet
swaybg -i ~/Pictures/billie-eilish-yellow-theme-desktop-wallpaper-4k.jpg -m fill &

waybar &
wlr-randr --output HDMI-A-1 --scale 2 &
~/.config/river/scripts/low_bat_notifier.sh &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
disown
easyeffects --gapplication-service &
/usr/bin/dunst &
nm-applet --indicator &
swayidle -w timeout 300 ~/.config/system_scripts/wayland_session_lock &
