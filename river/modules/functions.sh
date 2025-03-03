#!/bin/bash

# Function to set tags
set_tag() {
  riverctl set-focused-tags "$1"
}

# Function to toggle tags
toggle_tag() {
  riverctl toggle-focused-tags "$1"
}

# Function to set view tags.
set_view_tag() {
  riverctl set-view-tags "$1"
}

# Function to toggle view tags.
toggle_view_tag() {
  riverctl toggle-view-tags "$1"
}

# Function to send layout commands.
send_layout() {
  riverctl send-layout-cmd rivertile "$1"
}

# Function to map keys.
map_key() {
  riverctl map "$1" "$2" "$3"
}

#Function to map pointer keys.
map_pointer_key() {
  riverctl map-pointer "$1" "$2" "$3"
}
