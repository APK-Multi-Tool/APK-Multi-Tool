:: 
:: BATCH ROPTIPNG
:: 
@echo off 
FOR %%F IN (%~dp0*.apk) DO (call :optipng "%%F")

:optipng
IF (%1)== () goto end

:: defines tools folder
set parent="tools"

:: makes working folders
md "%~dp0optimized"
md "%~dp0untouched"
md "%~dp0apkopt_temp_%~n1"

:: defines tools location
set szip="%parent%\7za.exe"
set roptipng="%parent%\roptipng.exe"

:: uncompressing contents of apks
%szip% x -o"%~dp0apkopt_temp_%~n1" %1 
mkdir temp
xcopy "%~dp0apkopt_temp_%~n1\res\*.9.png" "%~dp0temp" /S /Y

%szip% x -o"%~dp0apkopt_temp_%~n1" %1

:: -o* (0-99) specifies how much the image is optimized
%roptipng% -o99 "%~dp0apkopt_temp_%~n1\**\*.png"
xcopy "temp" "apkopt_temp_%~n1\res" /S /Y
rmdir "temp" /S /Q
copy /b %1 "%~dp0untouched"
del /q %1

:: -mx* (0-9) indicates the compression level used for all working apks
%szip% a -tzip "%~dp0optimized\%~n1.apk" "%~dp0apkopt_temp_%~n1\*" -mx9 -mmt
rd /s /q "%~dp0apkopt_temp_%~n1"
:end
ECHO Batch Optomize of PNG Files Completed Now Beginig Zipalign functions.
Start "Starting Batch Zipalign of APK Files" batchzip02 
exit
