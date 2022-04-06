#!/bin/bash
randomFile=$(find ~/Pictures/wallpapers/backgrounds -type f | shuf -n 1)
echo "$randomFile"
