#!/usr/bin/env sh

# detect hypr theme and initialize variables

ScrDir=$(dirname $(realpath $0))
source $ScrDir/globalcontrol.sh
waybar_dir="$HOME/.config/waybar"

if [ "$EnableWallDcol" -eq 1 ]; then
	ln -fs $waybar_dir/themes/Wall-Dcol.css $waybar_dir/themes/theme.css
	reload_flag=1
elif [ $(readlink $waybar_dir/themes/theme.css) != "$waybar_dir/themes/${gtkTheme}.css" ]; then
	ln -fs $waybar_dir/themes/${gtkTheme}.css $waybar_dir/themes/theme.css
	reload_flag=1
fi

# restart waybar

if [ "$reload_flag" == "1" ]; then
	killall waybar
	waybar >/dev/null 2>&1 &
	# killall -SIGUSR2 waybar
fi
