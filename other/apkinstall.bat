@echo off
if (%1)==(1) goto FRAMRES1
if (%1)==(2) goto FRAMRES2
if (%1)==(3) goto FRAMRES3
if (%1)==(4) goto FRAMRES4
if (%1)==(5) goto FRAMRES5
if (%1)==(6) goto FRAMRES6
if (%1)==(7) goto FRAMRES7
if (%1)==(8) goto FRAMRES8
COLOR 0A

:FRAMRES1
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                         Searching for framework-res.apk                       *
ECHO *                                                                               *
ECHO *********************************************************************************
cls
IF NOT EXIST framework-res.apk (
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *        framework-res.apk not Found Would you like to pull the file from       *
ECHO *        the from your android device and try to install again?                 *
ECHO *                                                                               *
ECHO *********************************************************************************
set /P INPUT=Do you want to (Y)es or (N)o? : %=%
IF (%INPUT%)==(y) GOTO FRAMRES1Y
IF (%INPUT%)==(n) GOTO FRAMRES1N
:FRAMRES1Y
ECHO. Waiting for device...
adb kill-server
adb wait-for-device
ECHO. Device found.
ECHO atempting to pull framework-res.apk
adb pull system/framework/framework-res.apk
ECHO. System pull complete Killing ADB
adb kill-server
ECHO. ADB KILLED NOW retrying framework-res.apk installation
goto FRAMRES1
:FRAMRES1N
exit
)
IF EXIST framework-res.apk (
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                       framework-res.apk Found Installing                      *
ECHO *                                                                               *
ECHO *********************************************************************************
apktool if framework-res.apk
PAUSE
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                  Installation of framework-res.apk Complete                   *
ECHO *                       Returning to Dependencies menu                          *
ECHO *                                                                               *
ECHO *********************************************************************************

PAUSE
exit
)
:FRAMRES2
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                        Searching for twframework-res.apk                      *
ECHO *                                                                               *
ECHO *********************************************************************************
IF NOT EXIST twframework-res.apk (
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *        twframework-res.apk not Found Would you like to pull the file from     *
ECHO *        the from your android device and try to install again?                 *
ECHO *                                                                               *
ECHO *********************************************************************************
set /P INPUT=Do you want to (Y)es or (N)o? : %=%
IF (%INPUT%)==(y) GOTO FRAMRES2Y
IF (%INPUT%)==(n) GOTO FRAMRES2N
:FRAMRES2Y
ECHO. Waiting for device...
adb kill-server
adb wait-for-device
ECHO. Device found.
ECHO atempting to pull twframework-res.apk
adb pull system/framework/twframework-res.apk
ECHO. System pull complete Killing ADB
adb kill-server
ECHO. ADB KILLED NOW retrying twframework-res.apk installation
goto FRAMRES2
:FRAMRES2N
exit
)
IF EXIST twframework-res.apk (
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                      twframework-res.apk Found Installing                     *
ECHO *                                                                               *
ECHO *********************************************************************************
apktool if twframework-res.apk
PAUSE
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                 Installation of twframework-res.apk Complete                  *
ECHO *                       Returning to Dependencies menu                          *
ECHO *                                                                               *
ECHO *********************************************************************************

PAUSE
exit
)
:FRAMRES3
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                       Searching for com.htc.resources.apk                     *
ECHO *                                                                               *
ECHO *********************************************************************************
IF NOT EXIST com.htc.resources.apk (
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *        com.htc.resources.apk not Found Would you like to pull the file from   *
ECHO *        the from your android device and try to install again?                 *
ECHO *                                                                               *
ECHO *********************************************************************************
set /P INPUT=Do you want to (Y)es or (N)o? : %=%
IF (%INPUT%)==(y) GOTO FRAMRES3Y
IF (%INPUT%)==(n) GOTO FRAMRES3N
:FRAMRES3Y
ECHO. Waiting for device...
adb kill-server
adb wait-for-device
ECHO. Device found.
ECHO atempting to pull com.htc.resources.apk
adb pull system/framework/com.htc.resources.apk
ECHO. System pull complete Killing ADB
adb kill-server
ECHO. ADB KILLED NOW retrying com.htc.resources.apk installation
goto FRAMRES3
:FRAMRES3N
exit
)
IF EXIST com.htc.resources.apk (
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                     com.htc.resources.apk Found Installing                    *
ECHO *                                                                               *
ECHO *********************************************************************************
apktool if com.htc.resources.apk
PAUSE
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                Installation of com.htc.resources.apk Complete                 *
ECHO *                       Returning to Dependencies menu                          *
ECHO *                                                                               *
ECHO *********************************************************************************

PAUSE
exit
)
:FRAMRES4
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                            Searching for SystemUI.apk                         *
ECHO *                                                                               *
ECHO *********************************************************************************
cls
IF NOT EXIST SystemUI.apk (
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *        SystemUI.apk not Found Would you like to pull the file from            *
ECHO *        the from your android device and try to install again?                 *
ECHO *                                                                               *
ECHO *********************************************************************************
set /P INPUT=Do you want to (Y)es or (N)o? : %=%
IF (%INPUT%)==(y) GOTO FRAMRES4Y
IF (%INPUT%)==(n) GOTO FRAMRES4N
:FRAMRES4Y
ECHO. Waiting for device...
adb kill-server
adb wait-for-device
ECHO. Device found.
ECHO atempting to pull SystemUI.apk
adb pull system/framework/SystemUI.apk
ECHO. System pull complete Killing ADB
adb kill-server
ECHO. ADB KILLED NOW retrying SystemUI.apk installation
goto FRAMRES4
:FRAMRES4N
exit
)
IF EXIST SystemUI.apk (
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                         SystemUI.apk Found Installing                         *
ECHO *                                                                               *
ECHO *********************************************************************************
apktool if SystemUI.apk
PAUSE
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                     Installation of SystemUI.apk Complete                     *
ECHO *                       Returning to Dependencies menu                          *
ECHO *                                                                               *
ECHO *********************************************************************************

PAUSE
exit
)
:FRAMRES5
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                       Searching for SemcGenericUxpRes.apk                     *
ECHO *                                                                               *
ECHO *********************************************************************************
IF NOT EXIST SemcGenericUxpRes.apk (
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *        SemcGenericUxpRes.apk not Found Would you like to pull the file from   *
ECHO *        the from your android device and try to install again?                 *
ECHO *                                                                               *
ECHO *********************************************************************************
set /P INPUT=Do you want to (Y)es or (N)o? : %=%
IF (%INPUT%)==(y) GOTO FRAMRES5Y
IF (%INPUT%)==(n) GOTO FRAMRES5N
:FRAMRES5Y
ECHO. Waiting for device...
adb kill-server
adb wait-for-device
ECHO. Device found.
ECHO atempting to pull SemcGenericUxpRes.apk
adb pull system/framework/SemcGenericUxpRes.apk
ECHO. System pull complete Killing ADB
adb kill-server
ECHO. ADB KILLED NOW retrying SemcGenericUxpRes.apk installation
goto FRAMRES5
:FRAMRES5N
exit
)
IF EXIST SemcGenericUxpRes.apk (
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                     SemcGenericUxpRes.apk Found Installing                    *
ECHO *                                                                               *
ECHO *********************************************************************************
apktool if SemcGenericUxpRes.apk
PAUSE
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                Installation of SemcGenericUxpRes.apk Complete                 *
ECHO *                       Returning to Dependencies menu                          *
ECHO *                                                                               *
ECHO *********************************************************************************

PAUSE
exit
)

:FRAMRES6
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                          Searching for lidroid-res.apk                        *
ECHO *                                                                               *
ECHO *********************************************************************************
IF NOT EXIST lidroid-res.apk (
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *        lidroid-res.apk not Found Would you like to pull the file from         *
ECHO *        the from your android device and try to install again?                 *
ECHO *                                                                               *
ECHO *********************************************************************************
set /P INPUT=Do you want to (Y)es or (N)o? : %=%
IF (%INPUT%)==(y) GOTO FRAMRES5Y
IF (%INPUT%)==(n) GOTO FRAMRES5N
:FRAMRES6Y
ECHO. Waiting for device...
adb kill-server
adb wait-for-device
ECHO. Device found.
ECHO atempting to pull lidroid-res.apk
adb pull system/framework/lidroid-res.apk
ECHO. System pull complete Killing ADB
adb kill-server
ECHO. ADB KILLED NOW retrying lidroid-res.apk installation
goto FRAMRES5
:FRAMRES6N
exit
)
IF EXIST lidroid-res.apk (
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                        lidroid-res.apk Found Installing                       *
ECHO *                                                                               *
ECHO *********************************************************************************
apktool if lidroid-res.apk
PAUSE
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                   Installation of lidroid-res.apk Complete                    *
ECHO *                       Returning to Dependencies menu                          *
ECHO *                                                                               *
ECHO *********************************************************************************

PAUSE
exit
)
:FRAMRES7
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                          Searching for mediatek-res.apk                        *
ECHO *                                                                               *
ECHO *********************************************************************************
IF NOT EXIST mediatek-res.apk (
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *        mediatek-res.apk not Found Would you like to pull the file from         *
ECHO *        the from your android device and try to install again?                 *
ECHO *                                                                               *
ECHO *********************************************************************************
set /P INPUT=Do you want to (Y)es or (N)o? : %=%
IF (%INPUT%)==(y) GOTO FRAMRES5Y
IF (%INPUT%)==(n) GOTO FRAMRES5N
:FRAMRES7Y
ECHO. Waiting for device...
adb kill-server
adb wait-for-device
ECHO. Device found.
ECHO atempting to pull mediatek-res.apk
adb pull system/framework/mediatek-res.apk
ECHO. System pull complete Killing ADB
adb kill-server
ECHO. ADB KILLED NOW retrying mediatek-res.apk installation
goto FRAMRES5
:FRAMRES7N
exit
)
IF EXIST mediatek-res.apk (
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                        mediatek-res.apk Found Installing                      *
ECHO *                                                                               *
ECHO *********************************************************************************
apktool if mediatek-res.apk
PAUSE
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                   Installation of mediatek-res.apk Complete                   *
ECHO *                       Returning to Dependencies menu                          *
ECHO *                                                                               *
ECHO *********************************************************************************

PAUSE
exit
)
:FRAMRES8
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                          Searching for framework-miui.apk                     *
ECHO *                                                                               *
ECHO *********************************************************************************
IF NOT EXIST framework-miui.apk (
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *        framework-miui.apk not Found Would you like to pull the file from      *
ECHO *        the from your android device and try to install again?                 *
ECHO *                                                                               *
ECHO *********************************************************************************
set /P INPUT=Do you want to (Y)es or (N)o? : %=%
IF (%INPUT%)==(y) GOTO FRAMRES5Y
IF (%INPUT%)==(n) GOTO FRAMRES5N
:FRAMRES8Y
ECHO. Waiting for device...
adb kill-server
adb wait-for-device
ECHO. Device found.
ECHO atempting to pull framework-miui.apk
adb pull system/framework/framework-miui.apk
ECHO. System pull complete Killing ADB
adb kill-server
ECHO. ADB KILLED NOW retrying framework-miui.apk installation
goto FRAMRES5
:FRAMRES8N
exit
)
IF EXIST framework-miui.apk (
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                        framework-miui.apk Found Installing                    *
ECHO *                                                                               *
ECHO *********************************************************************************
apktool if framework-miui.apk
PAUSE
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                   Installation of framework-miui.apk Complete                 *
ECHO *                       Returning to Dependencies menu                          *
ECHO *                                                                               *
ECHO *********************************************************************************

PAUSE
exit
)
