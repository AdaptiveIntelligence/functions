#!/bin/bash
############################
function successOrFailure()
	{
	# If the last command completed successfully (it returned a zero), then
	if [ $? == 0 ]; then
  		# It is a success
  		echo -e "\t\tSUCCCESS!"
  		return 0
  	# Otherwise,
  	else
  		# It failed and we return a non-zero code to indicate an error
		echo -e "\t\tFAILURE!"
		return 1
	fi
	}
