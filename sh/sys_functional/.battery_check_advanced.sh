#! /bin/bash

upower -i $(upower -e | grep 'BAT') 
timedatectl
