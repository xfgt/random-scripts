#!/bin/bash
clear -x
echo "Enabling webcam (modprobe uvcvideo)"
echo
sudo modprobe uvcvideo

if [ $? -eq 0 ]; then
	echo "Camera has turned on successfuly!"
	pinhole
else
	echo "There was a problem with turning on the webcam. :("
fi
