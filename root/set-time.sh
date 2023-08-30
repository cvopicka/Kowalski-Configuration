#!/bin/bash

synced=false

while true; do

    # Verify that the time is correctly set to the new time zone
    current_time=$(date)
    echo "Current time: $current_time"

    # set delay
    sleep 3600

	if ! $synced; then

		if ping -c 1 -W 3 pool.ntp.org &> /dev/null; then
			echo "The network connection is normal"

			# Perform NTP time synchronization
			current_time=$(date)
			echo "Pre-sync time: $current_time"
			/usr/sbin/ntpdate pool.ntp.org >/dev/null 2>&1
			synced=true
			echo "Time synced successfully"
		else
			echo "unable to connect to network"
		fi
	fi

done
