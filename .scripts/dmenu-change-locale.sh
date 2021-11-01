#!/bin/sh

locale=$(localectl list-x11-keymap-layouts | dmenu)

if [ -n "$locale" ]; then
    setxkbmap -layout "$locale"
fi

