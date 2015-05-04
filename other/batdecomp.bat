@ECHO off
IF (%jar%)==(0) (ECHO Decompiling Apk)
IF (%jar%)==(1) (ECHO Decompiling Jar)
set /A count=0
FOR %%F IN (../place-apk-here-for-modding/*.apk) DO (
set /A count+=1
set a!count!=%%F
IF /I !count! LEQ 9 (java -Xmx%heapy%m -jar apktool.jar d "../place-apk-here-for-modding/%%F" -o "../projects/%%F" )
IF /I !count! GTR 10 (java -Xmx%heapy%m -jar apktool.jar d "../place-apk-here-for-modding/%%F" -o "../projects/%%F" )
)
exit