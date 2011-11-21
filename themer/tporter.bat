@echo off


mkdir transferred

if (%1)==(1) goto themeport
if (%1)==(2) goto themeopt
if (%1)==(3) goto themezip

:themeport
FOR %%F IN (%~dp0*.apk) DO (call :transfer "%%F")

:transfer
mkdir untouched
IF %1 == () goto end

:: defines tools folder
set parent="themetools"

:: makes working folders
md "%~dp0transfered"
md "%~dp0themeport_otemp_%~n1"
md "%~dp0themeport_ntemp_%~n1"

:: defines tools location
set szip="%parent%\7za.exe"

:: check if the current apk exists
IF EXIST "%~dp0transfered\%~n1.apk" (

	:: uncompressing contents of apks
	%szip% x -o"%~dp0themeport_otemp_%~n1" %1 *.png -r > nul
	%szip% x -o"%~dp0themeport_ntemp_%~n1" %1 *.png -r > nul

	:: check if the original apk exists
	IF EXIST "%~n1.apk" (
		
		:: gets name of current image folder
		FOR /F %%E IN ('dir "%~dp0themeport_otemp_%~n1\res\*" /A:D /S /B') DO (
			
			:: gets name of current png image
			FOR %%G IN ("%~dp0themeport_otemp_%~n1\res\**\*.png") DO (
			
				:: check if the current image exists
				IF NOT EXIST "%~dp0themeport_ntemp_%~n1\res\**\*.png" (
				del /q "%~dp0themeport_otemp_%~n1\res\**\*.png"
				)
			)
		)
	)
)

:: -mx* (0-9) indicates the compression level used for all working apks
%szip% a -tzip "%~dp0transfered\%~n1.apk" "%~dp0themeport_otemp_%~n1\*" -mx9 -mmt *.png > nul
rd /s /q "%~dp0themeport_otemp_%~n1"
rd /s /q "%~dp0themeport_ntemp_%~n1"
del /q %1

:end
(cd ..
Start cmd /c script 1
exit
)
:themeopt
FOR %%F IN (%~dp0*.apk) DO (call :optipng "%%F")

:optipng
mkdir untouched
mkdir optimized
IF %1 == () goto end

:: defines tools folder
set parent="themetools"

:: makes working folders
md "%~dp0optimized"
md "%~dp0untouched"
md "%~dp0themeport_otemp_%~n1"

:: defines tools location
set szip="%parent%\7za.exe"
set roptipng="%parent%\roptipng.exe"

:: uncompressing contents of apks
%szip% x -o"%~dp0themeport_otemp_%~n1" %1

:: -o* (0-99) specifies how much the image is optimized
%roptipng% -o99 "%~dp0themeport_otemp_%~n1\**\*.png"
copy /b %1 "%~dp0untouched"
del /q %1

:: -mx* (0-9) indicates the compression level used for all working apks
%szip% a -tzip "%~dp0optimized\%~n1.apk" "%~dp0themeport_otemp_%~n1\*" -mx9 -mmt
rd /s /q "%~dp0themeport_otemp_%~n1"

:end
( cd ..
Start cmd /c script 1
exit
)
:themezip
FOR %%F IN (%~dp0*.apk) DO (call :zipalign "%%F")

:zipalign
mkdir untouched
mkdir zipaligned
IF %1 == () goto end

:: defines tools folder
set parent="themetools"

:: makes working folder
md "%~dp0zipaligned"

:: defines tools location
set zipalign="%parent%\zipalign.exe"

:: -zipalign -v * (4) indicates the amount of bytes used to optimize apks
%zipalign% -v 4 "%~n1.apk" "%~dp0zipaligned\%~n1.apk"
del /q %1

:end
( cd ..
Start cmd /c script 1
exit
)