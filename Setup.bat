@ECHO off
setlocal enabledelayedexpansion
COLOR 0A
if (%1)==(0) goto skipme
if (%1) neq () goto skipme
ECHO *********************************************************************************** >> setuplog.txt
ECHO ^*                          %date% -- %time%^                          * >> setuplog.txt
ECHO *********************************************************************************** >> setuplog.txt
Setup 0 2>> setuplog.txt

:skipme
mode 85

:skipme
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
ECHO *    This Feature has not been added in yet please stand by                       *
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
Start "Read The Log - Main script is still running, close this to return" signer 1
goto RESTART

:CHECKUPDATE
ECHO Please Wait while we CHECK FOR UPDATES
IF EXIST apkver.txt (del apkver.txt)
tools\wget http://update.apkmultitool.com/apkver.txt
cls
IF NOT EXIST apkver.txt (goto :NOFILE)
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
if /I %tmpv% GTR %ver% (
wget http://update.apkmultitool.com/updates.txt

cls
IF EXIST updates.txt (
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                          NEW UPDATES FOUND                                    *
ECHO *                                                                               *
ECHO *********************************************************************************
PAUSE
goto changed
:SETDIR
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                         Creating project folder                               *
ECHO *                                                                               *
ECHO *********************************************************************************
WAIT 100
mkdir projects
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                    Creating place-apk-here-for-modding folder                 *
ECHO *                                                                               *
ECHO *********************************************************************************
WAIT 100
mkdir place-apk-here-for-modding
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                    Creating place-ogg-here folder                             *
ECHO *                                                                               *
ECHO *********************************************************************************
WAIT 100
mkdir place-ogg-here
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                 Creating place-apk-here-to-batch-optimize folder              *
ECHO *                                                                               *
ECHO *********************************************************************************

WAIT 100
mkdir place-apk-here-to-batch-optimize
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                    Creating place-apk-here-for-signing folder                 *
ECHO *                                                                               *
ECHO *********************************************************************************
WAIT 100
mkdir place-apk-here-for-signing
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                Creating moving to THEME PORTER to Setup Folders               *
ECHO *                                                                               *
ECHO *********************************************************************************
WAIT 100
cd themer
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                         Creating transferred folder                           *
ECHO *                                                                               *
ECHO *********************************************************************************
WAIT 100
mkdir transferred

cd ..
GOTO RESTART
: framres
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *      Feature not incorperated yet please look forwards to next release        *
ECHO *                                                                               *
ECHO *********************************************************************************
PAUSE
goto restart
:NOFILE

Goto RESTART

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
ECHO * If you're stuck and the log doesnot give you any indication as to what you    *
ECHO * are doing wrong, then post in the thread                                      *
ECHO * http://forum.xda-developers.com/showthread.php?t=1460400                      *
ECHO * Make sure u include ur setuplog.txt if avaible.                               *
ECHO *                                                                               *
ECHO *********************************************************************************
PAUSE
goto RESTART
:QUIT
exit
:END
exit