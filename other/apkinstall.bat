@echo off
if (%1)==(1) goto FRAMRES1
if (%1)==(2) goto FRAMRES2
if (%1)==(3) goto FRAMRES3
if (%1)==(4) goto FRAMRES4
if (%1)==(5) goto FRAMRES5
COLOR 0A

:FRAMRES1
cls
cd other
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                         Searching for framework-res.apk                       *
ECHO *                                                                               *
ECHO *********************************************************************************
cls
IF NOT EXIST framework-res.apk (
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *        framework-res.apk not Found please make sure the file is in the        *
ECHO *        other Directory returning to Dependencies menu                         *
ECHO *                                                                               *
ECHO *********************************************************************************
cd "%~dp0"
PAUSE
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
cd "%~dp0"
PAUSE
exit
)
:FRAMRES2
cls
cd other
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                        Searching for twframework-res.apk                      *
ECHO *                                                                               *
ECHO *********************************************************************************
IF NOT EXIST twframework-res.apk (
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *        twframework-res.apk not Found please make sure the file is in the      *
ECHO *        other Directory returning to Dependencies menu                         *
ECHO *                                                                               *
ECHO *********************************************************************************
cd "%~dp0"
PAUSE
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
cd "%~dp0"
PAUSE
exit
)
:FRAMRES3
cls
cd other
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                       Searching for com.htc.resources.apk                     *
ECHO *                                                                               *
ECHO *********************************************************************************
IF NOT EXIST com.htc.resources.apk (
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *        com.htc.resources.apk not Found please make sure the file is in the    *
ECHO *        other Directory returning to Dependencies menu                         *
ECHO *                                                                               *
ECHO *********************************************************************************
cd "%~dp0"
PAUSE
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
cd "%~dp0"
PAUSE
exit
)
:FRAMRES4
cd other
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
ECHO *        SystemUI.apk not Found please make sure the file is in the             *
ECHO *        other Directory returning to Dependencies menu                         *
ECHO *                                                                               *
ECHO *********************************************************************************
cd "%~dp0"
PAUSE
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
cd "%~dp0"
PAUSE
exit
)
:FRAMRES5
cls
cd other
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                       Searching for SemcGenericUxpRes.apk                     *
ECHO *                                                                               *
ECHO *********************************************************************************
IF NOT EXIST SemcGenericUxpRes.apk (
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *        SemcGenericUxpRes.apk not Found please make sure the file is in the    *
ECHO *        other Directory returning to Dependencies menu                         *
ECHO *                                                                               *
ECHO *********************************************************************************
cd "%~dp0"
PAUSE
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
cd "%~dp0"
PAUSE
exit
)
