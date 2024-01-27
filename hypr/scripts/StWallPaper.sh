#!/bin/bash

# image_path=$(echo "$text" | grep -oP 'image: \K.*')

# # Using sed to remove leading/trailing whitespaces
# image_path=$(echo "$image_path" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')

wallpapers_folder="$HOME/.config/papers"

random_wallpaper=$(find "$wallpapers_folder" -type f -name '*.jpg' -o -name '*.png' | shuf -n 1)

# Check if a wallpaper was found
if [ -n "$random_wallpaper" ]; then
    # Use the appropriate command to set the wallpaper
    # Replace the following line with the command for your specific wallpaper setter (e.g., swww, waypaper, etc.)
    swww img "$random_wallpaper"
    wal -i "$random_wallpaper"
else
    echo "No wallpapers found in $wallpapers_folder"
fi
