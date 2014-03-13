#!/bin/bash
#----------AUTHOR------------
	# Jacob Salmela
	# 11 October 2013
	# https://github.com/jakesalmela/

#---------DESCRIPTION--------
	# Deletes all printers

#----------FUNCTIONS---------
############################
function deleteAllPrinters()
	{
	for printer in $(lpstat -p | awk '{print $2}')
	do
		echo Deleting $printer...
		lpadmin -x $printer
	done
	}

#----------------------------
#-----------SCRIPT-----------
#----------------------------
deleteAllPrinters
