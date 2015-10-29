# Kodi Send video urls to an external machine

Copy the kodi-external-player-ip.sh script to the bash-scripts directory if you are using linux,
or to the bash-scripts-macosx directory if you using mac osx, 
or to the bash-scripts-windows directory if you using windows 

### Setting up kodi on an external to recieve streams

in the kodi menu go to system / settings, then services

under Web Server click Allow remote control via HTTP
Under Remote Control click Allow remote control by programs on this system

### Find the ip address

Find the ip address of the external machine running kodi, 
you can find the ip address under system / system info in the kodi menu


# Set up the script

After you have copied the kodi-external-player-ip.sh file to the bash scripts directory,
you need to edit the file and enter the ip address of the external machine running kodi


You need to change the script from this 


	#!/bin/bash

	# add ip address below
	IPADDR=



to this, replacing 192.168.1.2 with the ip address of the external machine running kodi


	#!/bin/bash

	# add ip address below
	IPADDR=192.168.1.2
