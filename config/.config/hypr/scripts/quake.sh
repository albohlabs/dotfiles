#!/bin/env bash

WORKSPACE=$(hyprctl clients -j | jq -rec '.[] | select(.class == "quake") | .workspace .name')
TERM_CMD="wezterm --config window_background_opacity=0.9 start --class quake"
# TERM_CMD="kitty -1 --class quake -o background_opacity=0.90 -o hide_window_decorations=yes -o remember_window_size=no"

if [ -z "$WORKSPACE" ]; then
	echo "start"
	# hyprctl dispatch -- exec "[float;size 1600 1000;center] $TERM_CMD"
	hyprctl dispatch -- exec "[float] $TERM_CMD"
elif [ "$WORKSPACE" == "special:quake" ]; then
	echo "show"

	# Store the current active window address
	hyprctl activewindow | head -n1 | cut -f2 -d ' ' >/tmp/hypr-quake-address

	# If the current active window is fullscreen, unfullscreen it
	hyprctl activewindow | rg "fullscreen: 1" && hyprctl dispatch fullscreen

	# Move the quake window to the current workspace, focus it, and bring it to the top
	hyprctl dispatch movetoworkspacesilent "+0,^(quake)\$"
	hyprctl dispatch focuswindow "^(quake)\$"
	hyprctl dispatch bringactivetotop
else
	echo "hide"

	# Move the quake window to the special workspace
	hyprctl dispatch movetoworkspacesilent "special:quake,^(quake)\$"

	# Focus the previously active window and bring it to the top
	hyprctl dispatch focuswindow "address:0x$(cat /tmp/hypr-quake-address)"
	hyprctl dispatch bringactivetotop
fi
