#!/bin/bash

# Application launchers
riverctl map normal Super Return spawn foot
riverctl map normal Super Q close
# riverctl map normal Super+Shift E exit
riverctl map normal Super+Shift E spawn "~/.config/river/scripts/powermenu"
riverctl map normal Super D spawn fuzzel
riverctl map normal Super Z spawn zen-browser
riverctl map normal Super I spawn zen-browser -private-window
riverctl map normal Super J spawn foot -e joshuto
riverctl map normal Super S spawn "grim && notify-send 'screenshot taken'"
riverctl map normal Super L spawn "swaylock-fancy -e -K -p 10 -f Monaco-Regular"
# cliphist keybindings
riverctl map normal Super V spawn "cliphist list | fuzzel --dmenu | cliphist decode | wl-copy"
riverctl map normal Super+Shift D spawn "cliphist list | fuzzel --dmenu | cliphist delete"

# View management
riverctl map normal Super J focus-view next
riverctl map normal Super K focus-view previous
riverctl map normal Super+Shift J swap next
riverctl map normal Super+Shift K swap previous
riverctl map normal Super Period focus-output next
riverctl map normal Super Comma focus-output previous
riverctl map normal Super+Shift Period send-to-output next
riverctl map normal Super+Shift Comma send-to-output previous

# Layout adjustments
riverctl map normal Super H send-layout-cmd rivertile "main-ratio -0.05"
riverctl map normal Super L send-layout-cmd rivertile "main-ratio +0.05"
riverctl map normal Super+Shift H send-layout-cmd rivertile "main-count +1"
riverctl map normal Super+Shift L send-layout-cmd rivertile "main-count -1"

# Make the main window take up 50% of the screen
riverctl send-layout-cmd rivertile "main-ratio 0.50"

# View movement and resizing
riverctl map normal Super+Alt H move left 100
riverctl map normal Super+Alt J move down 100
riverctl map normal Super+Alt K move up 100
riverctl map normal Super+Alt L move right 100
riverctl map normal Super+Alt+Control H snap left
riverctl map normal Super+Alt+Control J snap down
riverctl map normal Super+Alt+Control K snap up
riverctl map normal Super+Alt+Control L snap right
riverctl map normal Super+Alt+Shift H resize horizontal -100
riverctl map normal Super+Alt+Shift J resize vertical 100
riverctl map normal Super+Alt+Shift K resize vertical -100
riverctl map normal Super+Alt+Shift L resize horizontal 100

# Pointer mappings
riverctl map-pointer normal Super BTN_LEFT move-view
riverctl map-pointer normal Super BTN_RIGHT resize-view
riverctl map-pointer normal Super BTN_MIDDLE toggle-float

# Tag management
for i in {1..9}; do
  tags=$((1 << (i - 1)))
  riverctl map normal Super $i set-focused-tags $tags
  riverctl map normal Super+Shift $i set-view-tags $tags
  riverctl map normal Super+Control $i toggle-focused-tags $tags
  riverctl map normal Super+Shift+Control $i toggle-view-tags $tags
done

# Focus all tags
all_tags=$(((1 << 32) - 1))
riverctl map normal Super 0 set-focused-tags $all_tags
riverctl map normal Super+Shift 0 set-view-tags $all_tags

# Miscellaneous mappings
riverctl map normal Super Space toggle-float
riverctl map normal Super F toggle-fullscreen
riverctl map normal Super Up send-layout-cmd rivertile "main-location top"
riverctl map normal Super Right send-layout-cmd rivertile "main-location right"
riverctl map normal Super Down send-layout-cmd rivertile "main-location bottom"
riverctl map normal Super Left send-layout-cmd rivertile "main-location left"

# Passthrough mode
riverctl declare-mode passthrough
riverctl map normal Super F11 enter-mode passthrough
riverctl map passthrough Super F11 enter-mode normal

# Media keybindings
for mode in normal locked; do
  riverctl map "$mode" None XF86Eject spawn 'eject -T'
  riverctl map "$mode" None XF86AudioRaiseVolume spawn 'amixer set "Master" 10%+'
  riverctl map "$mode" None XF86AudioLowerVolume spawn 'amixer set "Master" 10%-'
  riverctl map "$mode" None XF86AudioMute spawn 'amixer set "Master" toggle'
  riverctl map "$mode" None XF86AudioMedia spawn 'playerctl play-pause'
  riverctl map "$mode" None XF86AudioPlay spawn 'playerctl play-pause'
  riverctl map "$mode" None XF86AudioPrev spawn 'playerctl previous'
  riverctl map "$mode" None XF86AudioNext spawn 'playerctl next'
  riverctl map "$mode" None XF86MonBrightnessUp spawn 'brightnessctl set +5%'
  riverctl map "$mode" None XF86MonBrightnessDown spawn 'brightnessctl set 5%-'
done
