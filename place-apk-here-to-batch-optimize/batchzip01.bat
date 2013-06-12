:: 
:: BATCH ZIPALIGN
:: 
@echo off
FOR %%F IN (%~dp0*.apk) DO (call :zipalign "%%F")

:zipalign
IF (%1)== () goto end

:: defines tools folder
set parent="tools"

:: makes working folder
md "%~dp0optimized"
md "%~dp0untouched"
:: defines tools location
set zipalign="%parent%\zipalign.exe"

:: -zipalign -v * (4) indicates the amount of bytes used to optimize apks
%zipalign% -v 4 "%~n1.apk" "%~dp0optimized\%~n1.apk"
copy /b %1 "%~dp0untouched"
del /q %1

:end
