#!/bin/bash
# Check if screenkey is running
if pgrep -x 'screenkey' > /dev/null; then
	# If screenkey is running, kill it
	killall screenkey
else	
	# If screenkey is not running, start it
	screenkey -g $(slop -n -f '%g')
fi

