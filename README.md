# Youtube Vanced Universal Installer

This is the offical system app/magisk module installer for Youtube Vanced (called in short 'ytva' below)
You can use this zip package here to do following:

- install the app as a system app (root version of ytva needed)
- install the app as magisk module (root version of ytva needed)
- install a magisk module which executes a [detach script](https://github.com/Magisk-Modules-Repo/iYTBP-Vanced-Magisk-Repo/blob/master/common/post-fs-data.sh) to remove the update notification from playstore
- uninstall system app/magisk module/detach module and attach app to playstore again
- use the zip in TWRP (or compatible recovery) and in magisk manager (only partially supported!)

**As already written to get things up and running you need the so called 'root' version of ytva which you can get from [vanced.app](https://vanced.app) or it's offical mirrors on [Android File Host](https://www.androidfilehost.com/?w=files&flid=170196) or [Media Fire](http://www.mediafire.com/folder/773e97cz2ezx1/AddFree_Youtube_BackgroundPlay_Enabled) WARNING: Please download ONLY from these locations as there are some fake sites and fake download locations out there which even can contain malware or worser things, so be careful!**

## Available Settings:

To change the behaving of the installer script following settings are defined and can be used via a settings file in which all the settings are included or via separate so called 'setup files' which when available in /sdcard or /sdcard/\*download\* folder enable the corresponding setting in the installer script.

You can use the file **'ytva\_use\_this\_settings.sh'** to pre-setup the installer. If it is placed in /sdcard or /sdcard/\*download\* folder the installer script will read it and use the provided settings from that file.

*NOTE: Be aware that if you use any setup files in addition that this settings file has priority and overwrites possible available setup files! All mentioned files are prepared and included in the folder 'config_files' in this repo and the values below are also the default values in the provided settings file*

**SEARCHFOLDER="\*ownload\*"**

Function: Defines the path where to search for ytva apk's

Possible values: a valid folder/subfolder on /sdcard

Corresponding setup file: **none available**

*NOTE: You can also use wildcards for example like in the preset folder setting \*download\* above which basically means search for the ytva apk in folder '/sdcard/Download' but also in '/sdcard/download' or '/sdcard/Zownload0815' and so on*

**MAGINSTALL="NO"**

Function: Use magisk module installation instead of system app installation

Possible values: YES/NO

Corresponding setup file: **ytva\_install\_via\_magisk.plz**

**DELETEDATA="NO"**

Function: Delete data of previously installed Youtube app. If you want to keep the data of your currently installed youtube app then set this to YES

Possible values: YES/NO

Corresponding setup file: **ytva\_delete\_data.plz**

*NOTE: Be aware that NOT deleting data before installing the apk might lead to problems*

**DETACH="NO"**

Function: Detach Youtube app from playstore to disable update notifications (only for installation with ytva module in addition)

Possible values: YES/NO

Corresponding setup files: **ytva\_detach\_from\_playstore.plz**

*NOTE: Use this in combination with ytva apk install if u want both modules get installed in a row*

**DETACHONLY="NO"**

Function: Detach Youtube app from playstore to disable update notifications (installation without installing ytva module)

Possible values: YES/NO

Corresponding setup files: **ytva\_only\_detach\_from\_playstore.plz**

**ATTACH="NO"**

Function: Attach Youtube app to playstore if it was detached previously and automatically remove the detach module (installation with ytva module in a row)

Possible values: YES/NO

Corresponding setup files: **ytva\_attach\_to\_playstore.plz**

*NOTE: Use this in combination with ytva apk install if u want both modules get installed in a row*

**ATTACHONLY="NO"**

Function: Attach Youtube app to playstore if it was detached previously and automatically remove the detach module (installation without installing ytva module)

Possible values: YES/NO

Corresponding setup files: **ytva\_only\_attach\_to\_playstore.plz**

**UNINSTALL="NO"**

Function: Completely uninstall ytva system app version, magisk module and detach module if any of these are available

Possible values: YES/NO

Corresponding setup files: **ytva\_uninstall.plz**

## DOWNLOAD:
You can download the universal installer either by using 'clone or download' in case you want it as 'fresh' as possible or you can use the above mentioned offical download locations, but again please only from that locations

Enjoy!
