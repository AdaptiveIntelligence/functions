#!/bin/bash
########################
function createRamDisk()
  {
  # Determine RAM disk size: multiplying your desired size of disk in Megabytes by 2048
	# 4GB RAM disk would be 8388608 (4096 * 2048)
	# RAM disk should be at or below 50 percent of your total physical memory
	ramDiskSize="8388608"
	
	echo "Creating $ramDiskSize RAM Disk..."
	diskutil eraseVolume HFS+ 'RAMDisk' `hdiutil attach -nomount ram://$ramDiskSize`
  }
