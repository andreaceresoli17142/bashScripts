#!/bin/bash

echo "changing bg"
feh --bg-fill $(sh .scripts/selectFileFromDir.sh)
echo "bg changed"
