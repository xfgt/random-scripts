#! /bin/bash
date
upower -i $(upower -e | grep 'BAT') | grep -E "state|to\ full|percentage"
