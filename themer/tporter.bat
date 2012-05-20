@echo off

mkdir untouched
FOR %%F IN (%~dp0*.apk) DO (call :transfer "%%F")

:transfer

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
