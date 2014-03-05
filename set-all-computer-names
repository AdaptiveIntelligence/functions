#!/bin/bash
#########################
function setAllComputerNames()
  {
  scutil --set ComputerName "iMac-01"
  scutil --set HostName "iMac-01"
  scutil --set LocalHostName "iMac-01"

  # Only 15 characters allowed for the NetBIOSName — make it meaningful
  defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "IMAC01" 
  }
