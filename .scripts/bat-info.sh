#!/bin/sh
capacity="$(cat /sys/class/power_supply/BAT0/capacity 2>&1)"
status="$(cat /sys/class/power_supply/BAT0/status 2>&1)"

printf "%s %d%%" "$status" "$capacity";
