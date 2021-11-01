#!/bin/sh
wp_location=/tmp/wallpaper.png

magick -size 1x32 gradient:"#43C6AC"-"#F8FFAE" $wp_location
feh --bg-scale $wp_location
