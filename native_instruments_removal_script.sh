#!/bin/bash
# This script removes all Native Instruments files.
# https://www.native-instruments.com/en/support/knowledge-base/show/413/how-to-uninstall-native-instruments-software-and-drivers-from-a-mac-os-x-computer/
read -p "Are you sure you want to uninstall all Native Instruments software and drivers?" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo
  echo "Uninstalling..."
  rm -rf /Applications/Native\ Instruments
  rm -f /Library/Preferences/com.native-instruments.*.plist
  rm -rf /Library/Audio/Plug-Ins/Components/Maschine*
  rm -rf /Library/Audio/Plug-Ins/VST/Maschine*
  rm -rf /Library/Application\ Support/Digidesign/Plug-Ins/Maschine*
  rm -rf /Library/Application\ Support/Avid/Audio/Plug-Ins/Maschine*
  rm -rf /Library/Application\ Support/Native\ Instruments
  rm -f ~/Library/Preferences/com.native-instruments.*.plist
  rm -rf ~/Library/Application\ Support/Native\ Instruments
  rm -rf /System/Library/Extensions/NIUSB*.kext
  echo
  echo "EXIT"
fi
exit
