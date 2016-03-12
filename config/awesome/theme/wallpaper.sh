#!/bin/bash

shopt -s nullglob
$( while true; do find ~/share/images/wallpapers -type f \( -name '*.jpg' -o -name '*.png' \) -print0 | shuf -n1 -z | xargs -0 feh --bg-max;	sleep 1m; done &)&
