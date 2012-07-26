@ECHO off
setlocal enabledelayedexpansion
COLOR 0A
if (%1)==(0) goto skipme
if (%1) neq () goto skipme
ECHO *********************************************************************************** >> setuplog.log
ECHO ^*                          %date% -- %time%^ >> setuplog.log                         * >> setuplog.log
ECHO *********************************************************************************** >> setuplog.log
Setup 0 2>> setuplog.log


:error

:skipme
cd "%~dp0"
mode con:cols=140 lines=50

set usrc=9
set capp=None

if errorlevel 1 goto erradb

cls

:RESTART
cd "%~dp0"
set menunr=GARBAGE
cls

ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO *                         APK MULTI-TOOL SETUP FILE                               *
ECHO *                                                                                 *
ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO * 1. Check for update                                                             *
ECHO *    This Will Check if there is a update to the main program                     *
ECHO *                                                                                 *
ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO * 2. Installing Framework-Res                                                     *
ECHO *    This Will install one of the Framwork-Res Files for 1.x/2.x/3.x/4.x          *
ECHO *    This Feature also will install any of the other Dependencies needed          *
ECHO *    In order to use this feature make sure to drop all of the needed files       *
ECHO *    into the platform-tools Folder or else this script will not find them        *
ECHO *                                                                                 *
ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO * 3. Setup Directories                                                            *
ECHO *    This will setup the appropate directories needed by Apk Multi-Tools          *
ECHO *    (This script only needs to be ran for first time users do not use if your    * 
ECHO *     Just updating from previous Version)                                        *
ECHO *                                                                                 *
ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO *                                 MISC Stuff                                      *
ECHO *                                                                                 *
ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO *  4   Read Log                                                                   *
ECHO *  5   About / Tips                                                               *
ECHO *  00   Quit                                                                      *
ECHO *                                                                                 *
ECHO ***********************************************************************************
SET /P menunr=Please make your decision:
IF %menunr%==1 (goto CHECKUPDATE)
IF %menunr%==2 (goto FRAMRES)
IF %menunr%==3 (goto SETDIR)
IF %menunr%==4 (goto LOGR)
IF %menunr%==5 (goto ABOUT)
IF %menunr%==00 (goto QUIT)

:WHAT
ECHO ************************************************************************************
ECHO *                                                                                  *
ECHO *     You went crazy and entered something that wasnt part of the menu options     *
ECHO *                                                                                  *
ECHO ************************************************************************************
PAUSE
goto RESTART

:ERRADB
cls
ECHO ************************************************************************************
ECHO *                                                                                  *
ECHO *  Adb was not found, you will not be able to manipulate the files on your phone   *
ECHO *                                                                                  *
ECHO ************************************************************************************
PAUSE
goto RESTART


:LOGR
cd tools
Start "Read The Log - Main script is still running, close this to return" signer 4
goto RESTART
:CHECKUPDATE
ECHO Please Wait while we CHECK FOR UPDATES
IF EXIST apkver.txt (del apkver.txt)
tools\wget http://update.apkmultitool.com/apkver.txt
cls
IF NOT EXIST apkver.txt (goto :RESTART)
set /a bool = 0
set info = ""
for /f "tokens=*" %%a in (apkver.txt) do (
if !bool!==0 set /a tmpv=%%a
if !bool!==1 set info=!info!%%a
set /a bool = 1
)
del apkver.txt
rem Apk Multi-tool version code
set /a ver = 1
if /I %tmpv% EQU %ver% (goto :NOUPDATE)
if /I %tmpv% GTR %ver% (
wget http://update.apkmultitool.com/updates.txt


cls
IF EXIST updates.txt (
ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO *                           NEW UPDATES FOUND                                     *
ECHO *                                                                                 *
ECHO ***********************************************************************************
PAUSE
goto changed
:recall
PAUSE

Start cmd /c tools\signer 3
exit
)
)
:NOUPDATE
ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO *                            NO UPDATES FOUND                                     *
ECHO *                                                                                 *
ECHO ***********************************************************************************
PAUSE
goto RESTART

:SETDIR
ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO *                          Creating project folder                                *
ECHO *                                                                                 *
ECHO ***********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul
mkdir projects
ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO *                     Creating place-apk-here-for-modding folder                  *
ECHO *                                                                                 *
ECHO ***********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul
mkdir place-apk-here-for-modding
ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO *                     Creating place-ogg-here folder                              *
ECHO *                                                                                 *
ECHO ***********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul
mkdir place-ogg-here
ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO *                  Creating place-apk-here-to-batch-optimize folder               *
ECHO *                                                                                 *
ECHO ***********************************************************************************

ping 1.1.1.1 -n 1 -w 2000 > nul
mkdir place-apk-here-to-batch-optimize
ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO *                     Creating place-apk-here-for-signing folder                  *
ECHO *                                                                                 *
ECHO ***********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul
mkdir place-apk-here-for-signing
ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO *                 Creating moving to THEME PORTER to Setup Folders                *
ECHO *                                                                                 *
ECHO ***********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul
cd themer
ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO *                          Creating transferred folder                            *
ECHO *                                                                                 *
ECHO ***********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul
mkdir transferred

cd "%~dp0"
ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO *                         DIRECTORIES SCRIPT COMPLETED                            *
ECHO *                                                                                 *
ECHO ***********************************************************************************
PAUSE
GOTO RESTART
: FRAMRES
set menunr=GARBAGE2
cls
ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO *                  APK MULTI-TOOL SETUP DEPENDENCY FILES                          *
ECHO *                                                                                 *
ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO * 1. Install framework-res.apk                                                    *
ECHO *                                                                                 *
ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO * 2. Install twframework-res.apk                                                  *
ECHO *                                                                                 *
ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO * 3. Install com.htc.resources.apk                                                *
ECHO *                                                                                 *
ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO * 4. Install SystemUI.apk                                                         *
ECHO *                                                                                 *
ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO * 5. Return to Main Menu                                                          *
ECHO *                                                                                 *
ECHO ***********************************************************************************
ECHO *                                                                                 *
ECHO *  00   Quit                                                                      *
ECHO *                                                                                 *
ECHO ***********************************************************************************
SET /P menunr=Please make your decision:
IF %menunr%==1 (goto FRAMRES1)
IF %menunr%==2 (goto FRAMRES2)
IF %menunr%==3 (goto FRAMRES3)
IF %menunr%==4 (goto FRAMRES4)
IF %menunr%==5 (goto RESTART)
IF %menunr%==00 (goto QUIT)
:WHAT
echo You went crazy and entered something that wasnt part of the menu options
PAUSE
goto FRAMRES


:FRAMRES1
cls
cd platform-tools
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
ECHO *        platform-tools Directory returning to Dependencies menu                *
ECHO *                                                                               *
ECHO *********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul )
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
ping 1.1.1.1 -n 1 -w 2000 > nul )
cd "%~dp0"
goto FRAMRES
:FRAMRES2
cls
cd platform-tools
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                        Searching for twframework-res.apk                      *
ECHO *                                                                               *
ECHO *********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul
IF NOT EXIST twframework-res.apk (
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *        twframework-res.apk not Found please make sure the file is in the      *
ECHO *        platform-tools Directory returning to Dependencies menu                *
ECHO *                                                                               *
ECHO *********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul )
IF EXIST twframework-res.apk (
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
ping 1.1.1.1 -n 1 -w 2000 > nul )
cd "%~dp0"
goto FRAMRES
:FRAMRES3
cls
cd platform-tools
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
ECHO *        platform-tools Directory returning to Dependencies menu                *
ECHO *                                                                               *
ECHO *********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul )
IF EXIST com.htc.resources.apk (

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
ping 1.1.1.1 -n 1 -w 2000 > nul )
cd "%~dp0"
goto FRAMRES
:FRAMRES4
ping 1.1.1.1 -n 1 -w 2000 > nul
cd platform-tools
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
ECHO *        platform-tools Directory returning to Dependencies menu                *
ECHO *                                                                               *
ECHO *********************************************************************************
ping 1.1.1.1 -n 1 -w 2000 > nul )
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
ping 1.1.1.1 -n 1 -w 2000 > nul )
cd "%~dp0"
goto FRAMRES


:ABOUT

cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                                   About                                       *
ECHO *                                                                               *
ECHO *********************************************************************************
ECHO *                                                                               *
type tools\version.txt
ECHO *                                                                               *
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                                   Tips                                        *
ECHO *                                                                               *
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO * (a) If you see errors while this script is running please make sure all that  *
ECHO *     files are in there proper location if not uninstall and try again         *
ECHO *                                                                               *
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO * (b) This tool was by no means created to hack or be used for piracy of apps   *
ECHO *                                                                               *
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO * If you're stuck and the log does not give you any indication as to what you   *
ECHO * are doing wrong, then post in the thread                                      *
ECHO * http://forum.xda-developers.com/showthread.php?t=1460400                      *
ECHO * Make sure u include ur setuplog.txt if avaible.                               *
ECHO *                                                                               *
ECHO *********************************************************************************
PAUSE
goto RESTART
:CHANGED
echo The Following Was Updated : 
echo.
set /a cc = 1
:recursive
for /f "tokens=%cc% delims=\" %%b in ('echo %info%') do (
echo %%b
set /a cc = %cc% + 1
goto recursive
)
echo.
goto recall
:endloop
goto quit
:QUIT
exit
:END
exit
