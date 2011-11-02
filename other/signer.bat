@echo off
if (%1)==(1) goto next
if (%1)==(2) goto log
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
:quit