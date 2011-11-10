@echo off
if (%1)==(1) goto next
if (%1)==(2) goto log
if (%1)==(3) goto updater
COLOR 0A
echo Signing "%~n1"
java -Xmx%heapy%m -jar signapk.jar -w testkey.x509.pem testkey.pk8 "../place-apk-here-for-signing/%~n1%~x1" "../place-apk-here-for-signing/signed.apk"
del /S /Q "../place-apk-here-for-signing/%~n1%~x1" > nul
ren "../place-apk-here-for-signing/signed.apk" "%~n1%~x1"
goto quit
:next
COLOR 0C
cd ..
type log.txt
PAUSE
goto quit
:log
mode con:cols=24 lines=2
echo Leave this open for 10s
adb logcat >> adblog.txt
:updater
COLOR 0A
:: defines tools folder
set parent="other"
:: defines tools location
set dget="%parent%\wget.exe"
del updates.txt
echo Please Wait While Apk Multi-Tools Updates....
Echo Downloading 7zip to install script.....
Echo .........0
Echo ........00
Echo .......000
Echo ......0000
Echo .....00000
%dget% http://update.apkmultitool.com/7za.exe
Echo Downloadng updates.......
Echo 0.........
Echo 00........
Echo 000.......
Echo 0000......
Echo 00000.....
%dget% http://update.apkmultitool.com/update.7z
7za x -y -o"./" "update.7z"
Echo Cleaning up updater files
Echo 0........0
Echo 00......00
Echo 000....000
Echo 0000..0000
Echo 0000000000
del update.7z
del 7za.exe
echo Update is Complete.....
echo Please click enter to close script and relaunch APK Multi-Tools
PAUSE
goto quit
:quit