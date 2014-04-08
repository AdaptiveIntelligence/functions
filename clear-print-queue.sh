#!/bin/bash
#---------RESOURCES----------
# http://superuser.com/questions/155933/is-there-an-approved-way-to-clear-var-cups-cache-on-a-unix-system
# http://www.cups.org/documentation.php/doc-1.4/man-lprm.html
# http://www.cups.org/documentation.php/doc-1.4/man-cancel.html?TOPIC=Man+Pages

#----------FUNCTIONS---------
function clearPrintQueue()
	{
	# Cancel all jobs on all destinations and their corresponding data files
	cancel -ax
	
	# Cancel all jobs using another method: lprm
	lprm -
	
	for printer in $(lpstat -p | awk '{print $2}')
	do
		# Set the printer to abort stuck jobs from now on  
		lpadmin -p $P -o printer-error-policy=abort-job
		
		# Cancel all jobs and their corresponding data files
		cancel -ax $printer
	
		# Cancel all jobs using another method: lprm
		lprm -P $printer
		
		# Cancel jobs and disable CUPS
		cupsdisable -c $printer
		
		# Cancel jobs while re-enabling CUPS
		cupsenable -c $printer
			
	# Complete the for loop	
	done
	}
