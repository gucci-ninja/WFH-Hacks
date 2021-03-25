#!/bin/bash
# This script rotates your zoom background based on the day of the week.

# The directory where zoom stores backgrounds
ZOOM_BG_DIR="$HOME/Library/Application Support/zoom.us/data/VirtualBkgnd_Custom"

# The following is the path to the zoom background that will get replaced
ZOOM_BG_PATH="$(ls "$ZOOM_BG_DIR" | tail -n 1)"

WEEKDAY="$(date +"%a")"

cp -R "./backgrounds/$WEEKDAY.jpg" "$ZOOM_BG_DIR/$ZOOM_BG_PATH"

