#!/bin/bash

Xephyr -br -ac -noreset -screen 800x600 :2 &
sleep 1
export DISPLAY=:2 &
