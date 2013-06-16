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
ECHO *  All ROMs Froyo and above require the system/framework/framework-res.apk      *
ECHO *  All ROMs Gingerbread and above require the /system/app/SystemUI.apk          *
ECHO *  All Samsung ROMs require the /system/framework/twframework-res.apk           *
ECHO *  All Sense UI ROMs require the system/framework/com.htc.resources.apk         *
ECHO *  All Xperia ROMs require the system/framework/SemcGenericUxpRes.apk           *
ECHO *  All XNote ROMs require the system/framework/lidroid-res.apk                  *
ECHO *  All mediatek chipset Devices require the system/framework/mediatek-res.apk   *
ECHO *  All MIUI ROMs may require the system/framework/framework-miui.apk            *
ECHO *                                                                               *
ECHO *********************************************************************************
pause
ECHO. Waiting for device...
adb kill-server
adb wait-for-device
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *  Device found Beginning system pull from quired files from phone              *
ECHO *  Please note that not all phones will have all the files listed above         *
ECHO *                                                                               *
ECHO *********************************************************************************
ECHO. Device found.
ECHO atempting to pull framework-res.apk
adb pull system/framework/framework-res.apk
ECHO atempting to pull twframework-res.apk
adb pull system/framework/twframework-res.apk
ECHO atempting to pull com.htc.resources.apk
adb pull system/framework/com.htc.resources.apk
ECHO atempting to pull SemcGenericUxpRes.apk
adb pull system/framework/SemcGenericUxpRes.apk
ECHO atempting to pull SystemUI.apk
adb pull system/app/SystemUI.apk
ECHO atempting to pull lidroid-res.apk
adb pull system/framework/lidroid-res.apk
ECHO atempting to pull mediatek-res.apk
adb pull system/framework/mediatek-res.apk
ECHO atempting to pull framework-miui.apk
adb pull system/framework/framework-miui.apk
pause
ECHO. System pull complete Killing ADB
adb kill-server
ECHO. ADB KILLED NOW Returning to main menu
pause
exit