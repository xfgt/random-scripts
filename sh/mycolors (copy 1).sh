#!/bin/bash

color=0

while [ $color -lt 108 ]; do
	echo -e "$color: \\033[1;${color}mzdravei sasede\\033[0m"
	((color++));
done
