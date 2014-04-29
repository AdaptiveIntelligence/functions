#!/bin/bash
#----------FUNCTIONS---------
############################
function forEachUser()
	{
	for user in /Users/[!Shared]*
	do
		echo $user
	done
	}
	
