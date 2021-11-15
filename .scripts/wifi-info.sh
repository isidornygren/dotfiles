#!/bin/bash

state=$(iwctl station wlan0 show | grep State | tr -s ' ' | cut -d' ' -f3) 
connected_network=$(iwctl station wlan0 show | grep 'Connected network' | tr -s ' ' | cut -d' ' -f4)

if [[ $state == "connected" ]]; then
	echo "$connected_network"
else
	echo "Disconnected"
fi

