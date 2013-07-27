@ECHO off
IF (%jar%)==(0) (ECHO Building Apk)
IF (%jar%)==(1) (ECHO Building Jar)
set /A count=0
FOR /D %%f in (../projects/*) DO (
set /A count+=1
set a!count!=%%F
IF /I !count! LEQ 9 (java -Xmx%heapy%m -jar apktool.jar b "../projects/%%f" -o "../place-apk-here-for-signing\unsigned%%f" )
IF /I !count! GTR 10 (java -Xmx%heapy%m -jar apktool.jar b "../projects/%%f" -o "../place-apk-here-for-signing\unsigned%%f" )
)
exit