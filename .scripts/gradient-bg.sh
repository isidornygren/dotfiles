#!/bin/sh
wp_location=/tmp/wallpaper.png

magick -size 1x32 gradient:"#282c34"-"#282c34" $wp_location
feh --bg-scale $wp_location

rm $wp_location
