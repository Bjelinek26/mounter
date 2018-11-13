#!/bin/bash

while [ "$ANS" != 1 ]
do

	read -p "This script requires the full path of the device you wish to mount
	as well as the mount point.  If you know this information enter 1  If you 
	would like some output to help you find this information press 2 " ANS


	case $ANS in
		1) 
    	read -p "full path to device: " DEVICE
    	read -p "full path to mount point " MPOINT

    	sudo mount $DEVICE $MPOINT

    	;;
    	2)
		sudo blkid
		;;
	esac
done