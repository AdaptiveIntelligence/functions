#!/bin/bash
################
function batchDownload()
        {
        # Put your URL in the quotes
        urlWithIndividualLinks="http://url.com/page-with-individual-links.html"
        
        # Put the desired file extension here 
        fileExtension="mp3"
        
        # In order for this to work, a few things need to exist:
        #	0. A page that has individual links to the files
        #	1. These links are visible in the HTML (right-click the page > View Source)
        #		---or by running the command: curl http://yoururl.com/pagewithfiles
        #	2. The command might need to be modified depending on the site
        #	3. You might download some unintentional files
        #
        # How to modify the command 
        #	0. Modify the cut command by replace the number next to f and see if you get different results
        #	1. You may also want to change the " character to something else
        #
        
        # for each file in the URLs
        for f in $(curl -s $urlWithIndividualLinks | grep $fileExtension | cut -d'"' -f2)
        do
            # Download the URL using curl
            curl -O $f
        done
        }
#------------------------------		
#-------BEGIN SCRIPT-----------
#------------------------------	
batchDownload
