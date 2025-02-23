#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="$HOME/Pictures/wallpapers"

# Get the list of wallpapers
WALLPAPERS=("$WALLPAPER_DIR"/*)

# Current wallpaper index (stored in a file)
INDEX_FILE="$HOME/.config/waybar/wallpaper_index"
if [[ ! -f "$INDEX_FILE" ]]; then
    echo 0 > "$INDEX_FILE"
fi
CURRENT_INDEX=$(cat "$INDEX_FILE")

# Handle -n (next) and -p (previous) arguments
if [[ "$1" == "-n" ]]; then
    CURRENT_INDEX=$(( (CURRENT_INDEX + 1) % ${#WALLPAPERS[@]} ))
elif [[ "$1" == "-p" ]]; then
    CURRENT_INDEX=$(( (CURRENT_INDEX - 1 + ${#WALLPAPERS[@]}) % ${#WALLPAPERS[@]} ))
fi

# Update the index file
echo "$CURRENT_INDEX" > "$INDEX_FILE"

# Set the new wallpaper
swww img "${WALLPAPERS[$CURRENT_INDEX]}" --transition-type any
