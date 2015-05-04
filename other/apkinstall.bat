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
ECHO *       Make sure framework-res.apk is in other folder before Continuing        *
ECHO *                                                                               *
ECHO *********************************************************************************
PAUSE
apktool if framework-res.apk
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                  Installation of framework-res.apk Complete                   *
ECHO *                       Returning to Dependencies menu                          *
ECHO *                                                                               *
ECHO *********************************************************************************
PAUSE
exit

:FRAMRES2
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *       Make sure twframework-res.apk is in other folder before Continuing      *
ECHO *                                                                               *
ECHO *********************************************************************************
PAUSE
apktool if twframework-res.apk
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                 Installation of twframework-res.apk Complete                  *
ECHO *                       Returning to Dependencies menu                          *
ECHO *                                                                               *
ECHO *********************************************************************************
PAUSE
exit
:FRAMRES3
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *     Make sure com.htc.resources.apk is in other folder before Continuing      *
ECHO *                                                                               *
ECHO *********************************************************************************
PAUSE
apktool if com.htc.resources.apk
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                Installation of com.htc.resources.apk Complete                 *
ECHO *                       Returning to Dependencies menu                          *
ECHO *                                                                               *
ECHO *********************************************************************************
PAUSE
exit

:FRAMRES4
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *          Make sure SystemUI.apk is in other folder before Continuing          *
ECHO *                                                                               *
ECHO *********************************************************************************
PAUSE
apktool if SystemUI.apk
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                     Installation of SystemUI.apk Complete                     *
ECHO *                       Returning to Dependencies menu                          *
ECHO *                                                                               *
ECHO *********************************************************************************
PAUSE
exit

:FRAMRES5
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *      Make sure SemcGenericUxpRes.apk is in other folder before Continuing     *
ECHO *                                                                               *
ECHO *********************************************************************************
PAUSE
apktool if SemcGenericUxpRes.apk
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                Installation of SemcGenericUxpRes.apk Complete                 *
ECHO *                       Returning to Dependencies menu                          *
ECHO *                                                                               *
ECHO *********************************************************************************
PAUSE
exit

:FRAMRES6
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *        Make sure lidroid-res.apk is in other folder before Continuing         *
ECHO *                                                                               *
ECHO *********************************************************************************
PAUSE
apktool if lidroid-res.apk
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                   Installation of lidroid-res.apk Complete                    *
ECHO *                       Returning to Dependencies menu                          *
ECHO *                                                                               *
ECHO *********************************************************************************
PAUSE
exit

:FRAMRES7
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *        Make sure mediatek-res.apk is in other folder before Continuing        *
ECHO *                                                                               *
ECHO *********************************************************************************
PAUSE
apktool if mediatek-res.apk
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                   Installation of mediatek-res.apk Complete                   *
ECHO *                       Returning to Dependencies menu                          *
ECHO *                                                                               *
ECHO *********************************************************************************
PAUSE
exit

:FRAMRES8
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *       Make sure framework-miui.apk is in other folder before Continuing       *
ECHO *                                                                               *
ECHO *********************************************************************************
PAUSE
apktool if framework-miui.apk
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                   Installation of framework-miui.apk Complete                 *
ECHO *                       Returning to Dependencies menu                          *
ECHO *                                                                               *
ECHO *********************************************************************************
PAUSE
exit
