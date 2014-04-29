#!/bin/bash
###############################
function runCommandAsEachUser()
  {
  # For each user in the Users folder that is not Shared
	for user in /Users/[!Shared]*
	do
		# Make a variable to store just the username
		username=$(echo $user | cut -d'/' -f3)
		
		# su as the user to run a command
		su "$username" -c "echo myCommandHere"
	done
	}
