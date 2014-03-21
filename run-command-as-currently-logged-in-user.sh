#!/bin/bash
#----------AUTHOR------------
	# Jacob Salmela
	# 14 November 2012
	# https://github.com/jakesalmela/

#---------DESCRIPTION--------
	# Force emptys the trash as the currently logged in user
	# Commands must be properly escaped in order to run correctly

#----------VARIABLES---------
	currentuser=$(stat -f "%Su" /dev/console)
	# Alternate ways to get the currently logged in user
	#	currentUser=$(who | grep console | awk '{print $1}')
	#	currentUser=$(logname)
	#	currentUser=$(ls -l /dev/console | cut -d " " -f4)
	#	currentUser=$(printf "get State:/Users/ConsoleUser\nd.show" | scutil | awk '/kCGSSessionUserNameKey/ {print $3}')
	

#----------FUNCTIONS---------
###########################
function runCommandAsUser()

	{	
	# Run command as user
	su -c "$currentUser" "$1"
	}

#----------------------------
#----------------------------
#-----------SCRIPT-----------
#----------------------------
runCommandAsUser <command_to_run>
