#!/bin/bash
setxkbmap -query | grep layout | awk -F ' ' '{print $2}'
