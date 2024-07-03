#!/bin/bash

echo Disabling the webcam...
sudo modprobe -r uvcvideo

if [ $? -eq 0 ]; then
	echo Camera has been turned off successfuly!
	echo For evidence, I am oppening camera software.
else
	echo "A problem occured turning off the webcam. Your ass is still shining to the open web. :("
	echo Showing evidence...
fi
pinhole
