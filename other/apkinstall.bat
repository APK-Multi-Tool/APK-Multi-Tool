@echo off
if (%1)==(1) goto FRAMRES1
if (%1)==(2) goto FRAMRES2
if (%1)==(3) goto FRAMRES3
if (%1)==(4) goto FRAMRES4
COLOR 0A

:FRAMRES1
cls
cd other
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                         Searching for framework-res.apk                       *
ECHO *                                                                               *
ECHO *********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul
cls
IF NOT EXIST framework-res.apk (
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *        framework-res.apk not Found please make sure the file is in the        *
ECHO *        other Directory returning to Dependencies menu                         *
ECHO *                                                                               *
ECHO *********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul 
cd "%~dp0"
goto quit
)
IF EXIST framework-res.apk (
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                       framework-res.apk Found Installing                      *
ECHO *                                                                               *
ECHO *********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul
apktool if framework-res.apk
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                  Installation of framework-res.apk Complete                   *
ECHO *                       Returning to Dependencies menu                          *
ECHO *                                                                               *
ECHO *********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul 
cd "%~dp0"
goto quit
)
:FRAMRES2
cls
cd other
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                        Searching for twframework-res.apk                      *
ECHO *                                                                               *
ECHO *********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul
IF NOT EXIST twframework-res.apk (
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *        twframework-res.apk not Found please make sure the file is in the      *
ECHO *        other Directory returning to Dependencies menu                *
ECHO *                                                                               *
ECHO *********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul 
cd "%~dp0"
goto quit
)
IF EXIST twframework-res.apk (
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                      twframework-res.apk Found Installing                     *
ECHO *                                                                               *
ECHO *********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul
cls
apktool if twframework-res.apk
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                 Installation of twframework-res.apk Complete                  *
ECHO *                       Returning to Dependencies menu                          *
ECHO *                                                                               *
ECHO *********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul 
cd "%~dp0"
goto quit
)
:FRAMRES3
cls
cd other
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                       Searching for com.htc.resources.apk                     *
ECHO *                                                                               *
ECHO *********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul
IF NOT EXIST com.htc.resources.apk (
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *        com.htc.resources.apk not Found please make sure the file is in the    *
ECHO *        other Directory returning to Dependencies menu                *
ECHO *                                                                               *
ECHO *********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul 
cd "%~dp0"
goto quit
)
IF EXIST com.htc.resources.apk (
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                     com.htc.resources.apk Found Installing                    *
ECHO *                                                                               *
ECHO *********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul
apktool if com.htc.resources.apk
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                Installation of com.htc.resources.apk Complete                 *
ECHO *                       Returning to Dependencies menu                          *
ECHO *                                                                               *
ECHO *********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul 
cd "%~dp0"
goto quit
)
:FRAMRES4
ping 1.1.1.1 -n 1 -w 2000 > nul
cd other
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                            Searching for SystemUI.apk                         *
ECHO *                                                                               *
ECHO *********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul
cls
IF NOT EXIST SystemUI.apk (
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *        SystemUI.apk not Found please make sure the file is in the             *
ECHO *        other Directory returning to Dependencies menu                         *
ECHO *                                                                               *
ECHO *********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul 
cd "%~dp0"
goto quit
)
IF EXIST SystemUI.apk (
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                         SystemUI.apk Found Installing                         *
ECHO *                                                                               *
ECHO *********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul
apktool if SystemUI.apk
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                     Installation of SystemUI.apk Complete                     *
ECHO *                       Returning to Dependencies menu                          *
ECHO *                                                                               *
ECHO *********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul
cd "%~dp0"
goto quit
)
:quit
goto FRAMRES