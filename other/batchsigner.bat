@echo off
COLOR 0A
echo Signing "%~n1"
java -Xmx%heapy%m -jar signapk.jar -w testkey.x509.pem testkey.pk8 "../place-apk-here-for-signing/%~n1%~x1" "../place-apk-here-for-signing/signed_%~n1%~x1.apk"
IF errorlevel 1 (
ECHO "An Error Occurred, Please Check The Log (option 26)"
PAUSE
)
del /S /Q "../place-apk-here-for-signing/%~n1%~x1" > nul
