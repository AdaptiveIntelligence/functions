#!/bin/bash
#----------AUTHOR------------
	# Jacob Salmela
	# 1 November 2013
	# https://github.com/jakesalmela/

#---------DESCRIPTION--------
	# This script will remove all login items and then add an app to the login items

#----------VARIABLES---------
	currentUser=$(stat -f "%Su" /dev/console)

#----------FUNCTIONS---------
#############################
function removeLoginItems()
	{
	osascript -e <<EOF 'tell application "System Events" 
		delete login items
		end tell'
		EOF
	}
	
#############################
function addLoginitems()
	{
	# Just copy and paste the "make login item" line for as many apps as you need to add
	osascript -e <<EOF 'tell application "System Events" 
		make login item at end with properties {path:"/Applications/Spotify.app",kind:application, hidden:true}
		end tell'
		EOF
	}
