########################################
# iYTBP Universal installer setup file
########################################
# You can use this file to pre-setup
# the installer. this file can be placed
# in /sdcard or /sdcard/download folder
########################################
# NOTE: Be aware that if u use settings
# files in addition: this config files
# has priority and overwites possible
# available settings files!
########################################

# Path where to search for iYTBP Apk's
# (must be a subfolder on sdcard!)
# possible values: a valid folder/subfolder
# on sdcard NOTE: u also can use wildcards
# eg. like in the preset folder setting below
SEARCHFOLDER="*ownload*"

# Use magisk installation instead of 
# root installation 
# possible values: YES/NO
MAGINSTALL="NO"

# Detach Youtube from playstore to 
# disable update notifications
# NOTE: use this in combination with 
# apk install if u want both modules
# get installed at the same time
# possible values: YES/NO
DETACH="NO"

# Detach Youtube from playstore to 
# disable update notifications 
# possible values: YES/NO
DETACHONLY="NO"

# Attach Youtube to playstore if it was 
# previously detached 
# NOTE: use this in combination with 
# apk install if u want both modules
# get installed at the same time
# possible values: YES/NO
ATTACH="NO"

# Attach Youtube to playstore if it was 
# previously detached 
# possible values: YES/NO
ATTACHONLY="NO"

# Completely uninstall iYTBP: root version, 
# magisk module and detach module 
# possible values: YES/NO
UNINSTALL="NO"
