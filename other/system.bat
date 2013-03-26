@ECHO off
COLOR 0A
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *  We are about to pull the needed Dependencies from your phone                 *
ECHO *  This Is a Universial Script Designed to attempt to pull all needed Files     *
ECHO *                                                                               *
ECHO *********************************************************************************
pause
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *  All Roms Froyo and above require the system/framework/framework-res.apk      *
ECHO *  All Roms Gingerbread and above require the /system/app/SystemUI.apk          *
ECHO *  All Samsung Roms require the /system/framework/twframework-res.apk           *
ECHO *  All Sense UI ROMs require the system/framework/com.htc.resources.apk         *
ECHO *                                                                               *
ECHO *********************************************************************************
pause
cd ..
ECHO. Waiting for device...
other\adb kill-server
other\adb wait-for-device
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *  Device found Beginning system pull from quired files from phone              *
ECHO *  Please note that not all phones will have all the files listed above         *
ECHO *                                                                               *
ECHO *********************************************************************************
ECHO. Device found.
ECHO atempting to pull framework-res.apk
other\adb pull system/framework/framework-res.apk  other
ECHO atempting to pull twframework-res.apk
other\adb pull system/framework/twframework-res.apk  other
ECHO atempting to pull com.htc.resources.apk
other\adb pull system/framework/com.htc.resources.apk  other
ECHO atempting to pull SemcGenericUxpRes.apk
other\adb pull system/framework/SemcGenericUxpRes.apk  other
ECHO atempting to pull SystemUI.apk
other\adb pull system/app/SystemUI.apk  other
pause
ECHO. System pull complete Killing ADB
other\adb kill-server
ECHO. ADB KILLED NOW Returning to main menu
pause
exit