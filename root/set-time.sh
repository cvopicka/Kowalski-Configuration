#!/bin/bash

synced=false

while ! $synced; do

    # Verify that the time is correctly set to the new time zone

	if ping -c 1 -W 3 pool.ntp.org &> /dev/null; then
		echo "The network connection is normal"

		# Perform NTP time synchronization
		current_time=$(date)
		echo "Pre-sync time: $current_time"
		/usr/sbin/ntpdate pool.ntp.org >/dev/null 2>&1
		synced=true
		current_time=$(date)
    	echo "Current time: $current_time"
		echo "Time synced successfully"
	else
		echo "unable to connect to network"
		# set delay
    	sleep 30
	fi

done
