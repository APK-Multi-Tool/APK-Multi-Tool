@echo off
if (%1)==(1) goto restart
setlocal enabledelayedexpansion
COLOR 0A
if (%1)==(0) goto skipme

echo -------------------------------------------------------------------------- >> log.txt
echo ^|%date% -- %time%^| >> log.txt
echo -------------------------------------------------------------------------- >> log.txt
Script 0 2>> log.txt
:skipme
mkdir projects
mkdir place-apk-here-for-modding
mkdir place-ogg-here
mkdir place-apk-here-to-batch-optimize
mkdir place-apk-here-for-signing
cd themer
mkdir transferred
:error
cd "%~dp0"
mode con:cols=140 lines=50
:restart
cd "%~dp0"
set menunr=GARBAGE
cls
echo  ----------------------------------
echo  |  APK Multi-Tool Setup Script   |
echo  ----------------------------------
echo  0   Check for update
echo  1   Installing Framework-Res
echo  2   
echo  3
echo  ----------------------------------
SET /P menunr=Please make your decision:
IF %menunr%==0 (goto checkupdate)
IF %menunr%==1 (goto framres)
IF %menunr%==2 (goto opt)
IF %menunr%==3 (goto zip)

:checkupdate
Echo Please Wait while we CHECK FOR UPDATES
IF EXIST apkver.txt (del apkver.txt)
tools\wget http://update.apkmultitool.com/apkver.txt
cls
IF NOT EXIST apkver.txt (goto :error)
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
echo New Update Was Found
echo.
goto changed
:recall
PAUSE

Start cmd /c tools\signer 3
exit
)
)

: framres
Echo Feature not incorperated yet please look forwards to next release
PAUSE
goto restart

:changed
echo The Following Was Updated : 
echo.
set /a cc = 1