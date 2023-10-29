#!/usr/bin/env sh

# read control file and initialize variables

ScrDir=$(dirname $(realpath $0))

# generate style and restart waybar

$ScrDir/wbarstylegen.sh
