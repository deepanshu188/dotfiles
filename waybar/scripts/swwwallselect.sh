#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="$HOME/Pictures/wallpapers"

# Use a file dialog to select a wallpaper
SELECTED_WALLPAPER=$(zenity --file-selection --filename="$WALLPAPER_DIR/" --title="Select Wallpaper")

# Set the selected wallpaper
if [[ -n "$SELECTED_WALLPAPER" ]]; then
    swww img "$SELECTED_WALLPAPER" --transition-type any
fi
