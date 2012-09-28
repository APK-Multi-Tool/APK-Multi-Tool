@echo off
setlocal enabledelayedexpansion
COLOR 0A
if (%1)==(0) goto skipme
if (%1) neq () goto adbi
echo -------------------------------------------------------------------------- >> APK-Multi-Tool.log
echo ^|%date% -- %time%^| >> APK-Multi-Tool.log
echo -------------------------------------------------------------------------- >> APK-Multi-Tool.log
Script 0 2>> APK-Multi-Tool.log



:error

:skipme
cd "%~dp0"
mode con:cols=140 lines=50



cls
set usrc=9
set dec=0
set capp=None
set heapy=512
set jar=0
java -version 
if errorlevel 1 goto errjava
"%~dp0other\adb.exe" version 
if errorlevel 1 goto erradb
set /A count=0
FOR %%F IN (place-apk-here-for-modding/*.apk) DO (
set /A count+=1
set tmpstore=%%~nF%%~xF
)
if %count%==1 (set capp=%tmpstore%)

:skipme2
cls
echo                                                    ,                            ,.::,                                              
echo                           OB@@@B@B@:       .@B@@@@@@@@@B@B@E.   @B@B@B.  .uB@B@B@BSi,                                              
echo                         7@B@@@ 7B@B@8      ,B@@@B@.,,r@@B@B@U   B@B@B@kMB@B@B@5                                                    
echo                       .B@B@B@7..@B@B@BS    ,@B@B@BMM@BOP5vi     @B@B@B@B@q@B@B@Mr                                                  
echo                     ,@B@B@@X2ZOMS2M@@@B@F  :B@B@B@              @@B@B@Y    7B@B@B@BJ,                                              
echo                     ivi...,        ...:iL,  :....:              :....:       .:.::7L:                                              
echo                                                .
echo                                               .:                                                                                   
echo                                                ir,                                                                                 
echo                                                 :r.   , ,            ,.,                                                           
echo                                                ,,ii:::.::::iiii:., .::,                                                            
echo                                             .:i:.,,,, , ,,,,..:i7777i,                                                             
echo                                          .i7i.,, , , ,,,,,,.,..:::i77L7i,                                                          
echo                                        :77r..., ,       ,,.....::::iii7vLi,                                                        
echo                                      :rrii::.,,, ,,  ,,,,......::::i:iiiiLvi                                                       
echo                                     7L18F::..,,,,,,,,,......:.::::::::::::rLr                                                      
echo                               ...:iLYr2@@v,......,,....,,..:::::::.....:.::rLi                                                     
echo                             ,ii.,.7Lvrrr7i:::::...:::.:r1X7:i::::.......:::i77,                                                    
echo                             ,vr:::LJ77rririiii:::i:i::7@@Mi:ii:::::::::::iiiiU.                                                    
echo                             ,rvi::uXYr77v77rr;ri;;rrriiii.i;r;;iiii:iiiii:i7k8.                                                    
echo                             ,7ii.:iYFSY7rr7vvv7vr7r7rr;iirrr777777r7rr;rivUN0k.                                                    
echo                             ,7i:..;::rJU2JL77rrr777777v7v7v7v7777rrrvvYu15kL:,,:vvi                                                
echo                             ,7::..ii::.::r7vvv7777r7rr;ririr;77v7vvLvv77rLLi,  .rjFi                                               
echo                             ,r:..,rr:::::..,,,.:::::::i:::i:::..::::iir7vYjri:::rv1i                                               
echo                             ,r...,iL::.:::.......,       ,:, ,  .iiirrir7JLrii::;vui                                               
echo                             ,r.,,,iv7:.,........:.,,,,.,,.:.,,.,:ii:iiii7vYr::::i7U:                                               
echo                              :::,.ivrri:.,,,,.....,,,,,,,.:.,.,,.::::i:i7LLr::.::vui                                               
echo                                ,,,i7r;rri:.,,,,,.,,,,,,,,,:,,,,,....::::r7Li:...:7U:                                               
echo                                   .Lrri;i;ii::...,,,,,,, ,..,,,,,.,....:;7vi....:vUi                                               
echo                                   :vr;iiiiiii:ii;:::::::::ri::::::i::...rrv:.,.,:71i                                               
echo                                   :Lrriiii:::::iii:::::i:iri::::irr77vvv7YL: ,,,.L5;                                               
echo                                   :uvr;ii:i:::::i::::::::iri::::iir;rr77YuF7.,,,:uU.                                               
echo                                    :LLrrii:::::iii:::i:::ir;:i:iir;rr77vv2E8v..::.                                                 
echo                                     ,:777ii:::iiiiiiii;irr7rri;ir;rrrrLY2Lr.                                                       
echo                                        ,.ii:.::..::::ii;i;ii::.::::::ri.,                                                          
echo                                           vr:....:i:.,.,.,,,..::::rr7u.                                                            
echo                                            :::::iLr.       iL7;i:ii7v1.                                                            
echo                                                            :v::...irY1:                                                            
echo                                                            .ri....:j2Y,                                                            
echo                                                              ,..:.::.                                                              
echo                                                Written by
echo                                    Gerald Wayne Baggett Jr AKA Raziel23x
echo   rL7vvL    iLv77J               .LvL:     :.    ULJv        0NPFjr77LFPqG,                          u7L7                          
echo   @B@@@BB  r@B@B@B, .:.:   .:.:  1@@@X :5B@B@ir  BMMO        M@OZB@B@BZOBB   ,iLLr.       ,iYvr,    ,B@B@                          
echo   B@@P.@BU,@@1:@B@  B@B@.  @B@B, LB@Bj P@@B@BNN  @B@B ,rii;7     JB@B@    :@@@BuJ@B@@J iB@B@uuB@B@Y  @B@@                          
echo   @@@@ r@B@B@ iB@B  @B@BF,:B@B@  u@@@F  .B@BM    B@@@ vB@@@@:    0@B@B    @B@BL  .@@@@ M@B@v  :@@B@  B@B@                          
echo   q@B0  u@BM  i@B@   kM@B@5kBBB  rBBBv   5M@@@Z  @B@O            uBMBO     .J8B@@@82:   .uZ@B@BOu:   @M@O
PAUSE
cls

:restart
if %dec%==0 (set decs=Sources and Resources Files)
if %dec%==1 (set decs=Source Files only)
if %dec%==2 (set decs=Resource Files only)
if %dec%==3 (set decs=Raw Format Only)

cd "%~dp0"
set menunr=GARBAGE
cls
echo  --------------------------------------------------------------------------------------------------------------------------
echo ^| Compression-Level: %usrc% ^| Heap Size: %heapy%mb ^| Decompile : %decs% ^| Current-App: %capp% ^|
echo  --------------------------------------------------------------------------------------------------------------------------
echo  ----------------------------------         ------------------------------------        -----------------------------------
echo  Simple Tasks Such As Image Editing         Advanced Tasks Such As Code Editing         Themers Convertion Tools
echo  ----------------------------------         ------------------------------------        -----------------------------------
echo  0    Adb pull                              9    Decompile apk                          16   Batch Theme Image Transfer
echo  1    Extract apk                           10   Decompile apk (with dependencies)          (Read the Instructions before
echo  2    Optimize images inside                     (For proprietary rom apks)                    using this feature)
echo  3    Zip apk                               11   Compile System APK files                                 
echo  4    Sign apk (Dont do this if its         12   Compile Non-System APK Files                                     
echo       a system apk)                         13   Sign apk
echo  5    Zipalign apk (Do once apk is          14   Install apk  
echo       created/signed)                       15   Compile apk / Sign apk / Install apk    
echo       Install apk (Dont do this if               (Non-System Apps Only)
echo       system apk, do adb push)             
echo  7    Zip / Sign / Install apk 
echo       (All in one step)
echo  8    Adb push (Only for system apk)
echo  -----------
echo  tools Stuff
echo  -----------
echo  17   Batch Optimize Apk (inside place-apk-here-to-batch-optimize only)
echo  18   Sign an apk(Batch support)(inside place-apk-here-for-signing folder only)
echo  19   Batch optimize ogg files (inside place-ogg-here only)
echo  20   Clean Files/Folders
echo  21   Select compression level for apk's
echo  22   Set Max Memory Size (Only use if getting stuck at decompiling/compiling)
echo  23   Read Log
echo  24   Set current project
echo  25   About / Tips / Debug Section
echo  26   Switch decompile mode (Allows you to pick to fully decompile the APK's or JAR's
echo       or to just decompile Sources or just the Resources or do a raw dump allowing you
echo       to just edit the normal images)
echo  00   Quit
echo  -------------------------------------------------------------------------------
SET /P menunr=Please make your decision:
IF %menunr%==0 (goto ap)
IF %menunr%==16 (goto btit)
IF %menunr%==17 (goto bopt)
IF %menunr%==18 (goto asi)
IF %menunr%==19 (goto ogg)
IF %menunr%==20 (goto cleanp)
IF %menunr%==21 (goto usrcomp)
IF %menunr%==22 (goto heap)
IF %menunr%==23 (goto logr)
IF %menunr%==24 (goto filesel)
IF %menunr%==25 (goto about)
IF %menunr%==26 (goto switchc)
IF %menunr%==00 (goto quit)

if %capp%==None goto noproj
IF %menunr%==1 (goto ex)
IF %menunr%==2 (goto opt)
IF %menunr%==3 (goto zip)
IF %menunr%==4 (goto si)
IF %menunr%==5 (goto zipa)
IF %menunr%==6 (goto ins)
IF %menunr%==7 (goto alli)
IF %menunr%==8 (goto apu)
IF %menunr%==9 (goto de)
IF %menunr%==10 (goto ded)
IF %menunr%==11 (goto co)
IF %menunr%==12 (goto co2)
IF %menunr%==13 (goto si)
IF %menunr%==14 (goto ins)
IF %menunr%==15 (goto all)
:WHAT
echo You went crazy and entered something that wasnt part of the menu options
PAUSE
goto restart
:switchc
set /a dec+=1 
if (%dec%)==(4) (set /a dec=0)
goto restart
:cleanp
echo 1. Clean This Project's Folder
echo 2. Clean All Apk's in Modding Folder
echo 3. Clean All OGG's in OGG Folder
echo 4. Clean All Apk's in Optimize Folder
echo 5. Clean All Apk's in Signing Folder
echo 6. Clean All Projects
echo 7. Clean All Folders/Files
echo 8. Go Back To Main Menu
SET /P menuna=Please make your decision:
echo Clearing Directories
IF %menuna%==1 (
if %capp%==None goto noproj
rmdir /S /Q %userprofile%\apktool > nul
rmdir /S /Q projects\%capp% > nul
mkdir projects\%capp%
)
IF %menuna%==2 (
rmdir /S /Q %userprofile%\apktool > nul
rmdir /S /Q place-apk-here-for-modding > nul
mkdir place-apk-here-for-modding
)
IF %menuna%==3 (
rmdir /S /Q place-ogg-here > nul
mkdir place-ogg-here
)
IF %menuna%==4 (
rmdir /S /Q place-apk-here-to-batch-optimize > nul
mkdir place-apk-here-to-batch-optimize
)
IF %menuna%==5 (
rmdir /S /Q place-apk-here-for-signing > nul
mkdir place-apk-here-for-signing
)
IF %menuna%==7 (
rmdir /S /Q %userprofile%\apktool > nul
rmdir /S /Q projects\%capp% > nul
mkdir projects\%capp%
rmdir /S /Q place-apk-here-for-modding > nul
mkdir place-apk-here-for-modding
rmdir /S /Q place-ogg-here > nul
mkdir place-ogg-here
rmdir /S /Q place-apk-here-to-batch-optimize > nul
mkdir place-apk-here-to-batch-optimize
rmdir /S /Q place-apk-here-for-signing > nul
mkdir place-apk-here-for-signing
rmdir /S /Q %userprofile%\apktool > nul
rmdir /S /Q projects > nul
mkdir projects
)
IF %menuna%==6 (
rmdir /S /Q %userprofile%\apktool > nul
rmdir /S /Q projects > nul
mkdir projects
)
goto restart
:about
cls
echo About
echo -----







type other\version.txt
echo Tips
echo ----
echo 1. If Modifying system apps, never resign them unless you want to resign all
echo apk's that share its shared:uid
echo 2. If decompiling/recompiling system apps and if AndroidManifest.xml was not
echo preserved from the original apk, then either push the apk when in recovery or
echo by doing :
echo adb remount
echo adb shell stop
echo adb push something.apk /wherever/something.apk
echo adb shell start
echo 3. Decompiling a themed apk is not possible, you must get the original unthemed
echo apk, then decompile, make your theme/xml changes and recompile
echo 4. If you're stuck and the log doesnot give you any indication as to what you 
echo are doing wrong, then post in the thread http://www.tiny.cc/apkmanager
echo Make sure u include ur APK-Multi-Tool.log, and if its not a editing problem i.e 
echo its something regarding when u push it to your phone, then post ur adb log 
echo as well. To do so 
echo follow these steps :
echo 1. Connect ur phone to ur pc
echo 2. Push/install the app on your phone
echo 3. Select "Create Log" option on this menu
echo 4. Let the new window run for 10 seconds, then close it
echo Once done, you will find a adblog.txt in the root folder
echo Upload that as well.
echo.
echo 1. Create log
echo 2. Go back to main menu
SET /P menunr=Please make your decision:
IF %menunr%==1 (Start ""%~dp0other\adb.exe" Log" other\signer 2)
goto restart
:portapk
echo Im going to try resigning the apk and see if that works
echo Did it successfully install (y/n) ^?
echo Ok, lets try looking through for any shared uid, if i find any i will remove them
:filesel
cls
set /A count=0
FOR %%F IN (place-apk-here-for-modding/*.apk) DO (
set /A count+=1
set a!count!=%%F
if /I !count! LEQ 9 (echo ^- !count!  - %%F )
if /I !count! GTR 10 (echo ^- !count! - %%F )
)
echo.
echo Choose the app to be set as current project?
set /P INPUT=Enter It's Number: %=%
if /I %INPUT% GTR !count! (goto chc)
if /I %INPUT% LSS 1 (goto chc)
set capp=!a%INPUT%!
set jar=0
set ext=jar
IF "!capp:%ext%=!" NEQ "%capp%" set jar=1
goto restart
:chc
set capp=None
goto restart
rem :bins
rem echo Waiting for device
rem "%~dp0other\adb.exe" wait-for-device
rem echo Installing Apks
rem FOR %%F IN ("%~dp0place-apk-here-for-signing\*.apk") DO "%~dp0other\adb.exe" install -r "%%F"
rem goto restart
:heap
set /P INPUT=Enter max size for java heap space in megabytes (eg 512) : %=%
set heapy=%INPUT%
cls
goto restart
:usrcomp
set /P INPUT=Enter Compression Level (0-9) : %=%
set usrc=%INPUT%
cls
goto restart

:btit
( echo Batch Theme Image Transfer TOOL
echo Expermental use with caution
echo This tool makes the process of transferring images from one APK file to another 
echo APK File of the same file making it easier to update themes or even transferring
echo a theme update.zip of one ROM to another Rom allowing the porting of theme to
echo be much faster.
echo (Note: You will have to manually replace the progress_horizontals.xml from the
echo framework-res since this file is needed with Theme Changes)
PAUSE
Start cmd /c themer\tporter
exit
)
:ogg
cd other
mkdir temp
echo Optimizing Ogg
FOR %%F IN ("../place-ogg-here/*.ogg") DO sox "../place-ogg-here/%%F" -C 0 "temp\%%F"
cd ..
MOVE other\temp\*  place-ogg-here
rmdir /S /Q other\temp
goto restart
:alli
IF NOT EXIST "%~dp0projects\%capp%" GOTO dirnada
cls
echo 1    System apk (Retains signature)
echo 2    Regular apk (Removes signature for re-signing)
SET /P menunr=Please make your decision: 
IF %menunr%==1 (goto sys1)
IF %menunr%==2 (goto oa1)
:sys1
echo Zipping Apk
cd other
7za a -tzip "../place-apk-here-for-modding/unsigned_%capp%" "../projects/%capp%/*" -mx%usrc%
if errorlevel 1 (
echo "An Error Occured, Please Check The Log (option 23)"
PAUSE
)
cd ..
goto si1
:oa1
cd other
echo Zipping Apk
rmdir /S /Q "../out/META-INF"
7za a -tzip "../place-apk-here-for-modding/unsigned_%capp%" "../projects/%capp%/*" -mx%usrc%
if errorlevel 1 (
echo "An Error Occured, Please Check The Log (option 23)"
PAUSE
)
cd ..
:si1
cd other
echo Signing Apk
java -Xmx%heapy%m -jar signapk.jar -w testkey.x509.pem testkey.pk8 ../place-apk-here-for-modding/unsigned_%capp% ../place-apk-here-for-modding/signed_%capp%
if errorlevel 1 (
echo "An Error Occured, Please Check The Log (option 23)"
PAUSE
)
DEL /Q "../place-apk-here-for-modding/unsigned_%capp%"
cd ..
:ins1
echo Waiting for device
"%~dp0other\adb.exe" wait-for-device
echo Installing Apk
"%~dp0other\adb.exe" install -r %~dp0place-apk-here-for-modding/signed_%capp%
if errorlevel 1 (
echo "An Error Occured, Please Check The Log (option 23)"
PAUSE
)
goto restart
:asi
cd other
DEL /Q "../place-apk-here-for-signing/signed.apk"
FOR %%F in (../place-apk-here-for-signing/*) DO call signer "%%F"
cd ..
goto restart
:bopt
set /P INPUT=Do you want to zipalign(z), optimize png(p) or both(zp)? : %=%
FOR %%F IN (place-apk-here-to-batch-optimize\*.apk) DO (call :dan "%%F")
MOVE "other\optimized\*.apk" "place-apk-here-to-batch-optimize"
rmdir /S /Q "other\optimized"
goto restart
:dan
if (%INPUT%)==(zp) GOTO zipb
if (%INPUT%)==(z) GOTO zipo
:zipb
@echo Optimizing %~1...
cd other
md "apkopt_temp_%~n1"
md optimized
dir /b
7za x -o"apkopt_temp_%~n1" "../place-apk-here-to-batch-optimize/%~n1%~x1"
mkdir temp
xcopy "apkopt_temp_%~n1\res\*.9.png" "temp" /S /Y
roptipng -o99 "apkopt_temp_%~n1\**\*.png"
del /q "..\place-apk-here-to-batch-optimize\%~n1%~x1"
xcopy "temp" "apkopt_temp_%~n1\res" /S /Y
rmdir "temp" /S /Q
if (%INPUT%)==(p) GOTO ponly
7za a -tzip "optimized\%~n1.unaligned.apk" "%~dp0other\apkopt_temp_%~n1\*" -mx%usrc% 
rd /s /q "apkopt_temp_%~n1"
zipalign -v 4 "optimized\%~n1.unaligned.apk" "optimized\%~n1.apk"
del /q "optimized\%~n1.unaligned.apk"
goto endab
:ponly
7za a -tzip "optimized\%~n1.apk" "%~dp0other\apkopt_temp_%~n1\*" -mx%usrc%
rd /s /q "apkopt_temp_%~n1"
goto endab
:zipo
@echo Optimizing %~1...
zipalign -v 4 "%~dp0place-apk-here-to-batch-optimize\%~n1%~x1" "%~dp0place-apk-here-to-batch-optimize\u%~n1%~x1"
del /q "%~dp0place-apk-here-to-batch-optimize\%~n1%~x1"
rename "%~dp0place-apk-here-to-batch-optimize\u%~n1%~x1" "%~n1%~x1"
goto endab
:dirnada
echo %capp% has not been extracted, please do so before doing this step
PAUSE
goto restart
:opt
IF NOT EXIST "%~dp0projects\%capp%" GOTO dirnada
mkdir temp
xcopy "%~dp0projects\%capp%\res\*.9.png" "%~dp0temp" /S /Y
cd other
echo Optimizing Png's
roptipng -o99 "../projects/%capp%/**/*.png"
cd ..
xcopy "%~dp0temp" "%~dp0projects\%capp%\res" /S /Y
rmdir temp /S /Q
goto restart
:noproj
echo Please Select A Project To Work On (Option #23)
PAUSE
goto restart
:ap
echo Where do you want adb to pull the apk from? 
echo Example of input : /system/app/launcher.apk
set /P INPUT=Type input: %=%
echo Pulling apk
"%~dp0other\adb.exe" pull %INPUT% "%~dp0place-apk-here-for-modding\something.apk"
if errorlevel 1 (
echo "An Error Occured, Please Check The Log (option 23)"
PAUSE
goto restart
)
set jar=0
set ext=jar
IF "!INPUT:%ext%=!" NEQ "%INPUT%" set jar=1
:renameagain
echo What filename would you like this app to be stored as ?
echo Eg (launcher.apk)
set /P INPUT=Type input: %=%
IF EXIST "%~dp0place-apk-here-for-modding\%INPUT%" (
echo File Already Exists, Try Another Name
PAUSE
goto renameagain)
rename "%~dp0place-apk-here-for-modding\something.apk" %INPUT%
echo Would you like to set this as your current project (y/n)?
set /P inab=Type input: %=%
if %inab%==y (set capp=%INPUT%)
goto restart
:apu
echo Where do you want adb to push to and as what name 
echo Example of input : /system/app/launcher.apk
set /P INPUT=Type input: %=%
echo Waiting for device
"%~dp0other\adb.exe" wait-for-device
"%~dp0other\adb.exe" remount
echo Pushing apk
"%~dp0other\adb.exe" push "place-apk-here-for-modding\System_%capp%" %INPUT%
if errorlevel 1 (
echo "An Error Occured, Please Check The Log (option 23)"
PAUSE
)
goto restart
:zipa
echo Zipaligning Apk
IF EXIST "%~dp0place-apk-here-for-modding\signed_%capp%" zipalign -f 4 "%~dp0place-apk-here-for-modding\signed_%capp%" "%~dp0place-apk-here-for-modding\signed_aligned_%capp%"

IF EXIST "%~dp0place-apk-here-for-modding\unsigned_%capp%" zipalign -f 4 "%~dp0place-apk-here-for-modding\unsigned_%capp%" "%~dp0place-apk-here-for-modding\unsigned_aligned_%capp%"

if errorlevel 1 (
echo "An Error Occured, Please Check The Log (option 23)"
PAUSE
)
DEL /Q "%~dp0place-apk-here-for-modding\signed_%capp%"
DEL /Q "%~dp0place-apk-here-for-modding\unsigned_%capp%"
rename "%~dp0place-apk-here-for-modding\signed_aligned_%capp%" signed_%capp%
rename "%~dp0place-apk-here-for-modding\unsigned_aligned_%capp%" unsigned_%capp%
goto restart
:ex
cd other
echo Extracting apk
IF EXIST "../projects/%capp%" (rmdir /S /Q "../projects/%capp%")
7za x -o"../projects/%capp%" "../place-apk-here-for-modding/%capp%"
if errorlevel 1 (
echo "An Error Occured, Please Check The Log (option 23)"
PAUSE
)
cd ..
goto restart
:zip
IF NOT EXIST "%~dp0projects\%capp%" GOTO dirnada
cls
echo 1    System apk (Retains signature)
echo 2    Regular apk (Removes signature for re-signing)
SET /P menunr=Please make your decision: 
IF %menunr%==1 (goto sys)
IF %menunr%==2 (goto oa)
:sys
echo Zipping Apk
cd other
7za a -tzip "../place-apk-here-for-modding/unsigned_%capp%" "../projects/%capp%/*" -mx%usrc%
if errorlevel 1 (
echo "An Error Occured, Please Check The Log (option 23)"
PAUSE
)

cd ..
goto restart
:oa
cd other
echo Zipping Apk
rmdir /S /Q "../out/META-INF"
7za a -tzip "../place-apk-here-for-modding/unsigned_%capp%" "../projects/%capp%/*" -mx%usrc%
if errorlevel 1 (
echo "An Error Occured, Please Check The Log (option 23)"
PAUSE
)

cd ..
goto restart
:ded
cd other
IF EXIST "%~dp0place-apk-here-for-modding\unsigned_%capp%" (del /Q "%~dp0place-apk-here-for-modding\unsigned_%capp%")
:temr
echo Drag the dependee apk in this window or type its path
echo Example to decompile Rosie.apk, drag com.htc.resources.apk in this window
set /P INPUT=Type input: %=%
java -jar apktool.jar if %INPUT%
if NOT EXIST %userprofile%\apktool\framework\2.apk (
echo.
echo "Sorry thats not the dependee apk, try again"
goto temr
)
if (%jar%)==(0) (echo Decompiling Apk %decs%)
if (%jar%)==(1) (echo Decompiling Jar %decs%)
if (%dec%)==(0) (java -Xmx%heapy%m -jar apktool.jar d ../place-apk-here-for-modding/%capp% ../projects/%capp%)
if (%dec%)==(1) (java -Xmx%heapy%m -jar apktool.jar d -r ../place-apk-here-for-modding/%capp% ../projects/%capp%)
if (%dec%)==(2) (java -Xmx%heapy%m -jar apktool.jar d -s ../place-apk-here-for-modding/%capp% ../projects/%capp%)
if (%dec%)==(3) (java -Xmx%heapy%m -jar apktool.jar d -r -s ../place-apk-here-for-modding/%capp% ../projects/%capp%)

if errorlevel 1 (
echo "An Error Occured, Please Check The Log (option 23)"
PAUSE
)
cd ..
goto restart
:de
cd other
IF EXIST "../place-apk-here-for-modding/unsigned_%capp%" (del /Q "../place-apk-here-for-modding\unsigned_%capp%")
IF EXIST "../place-apk-here-for-modding/signed_%capp%" (del /Q "../place-apk-here-for-modding\signed_%capp%")

IF EXIST "../projects/%capp%" (rmdir /S /Q "../projects/%capp%")
if (%jar%)==(0) (echo Decompiling Apk %decs%)
if (%jar%)==(1) (echo Decompiling Jar %decs%)
if (%dec%)==(0) (java -Xmx%heapy%m -jar apktool.jar d ../place-apk-here-for-modding/%capp% ../projects/%capp%)
if (%dec%)==(1) (java -Xmx%heapy%m -jar apktool.jar d -r ../place-apk-here-for-modding/%capp% ../projects/%capp%)
if (%dec%)==(2) (java -Xmx%heapy%m -jar apktool.jar d -s ../place-apk-here-for-modding/%capp% ../projects/%capp%)
if (%dec%)==(3) (java -Xmx%heapy%m -jar apktool.jar d -r -s ../place-apk-here-for-modding/%capp% ../projects/%capp%)

if errorlevel 1 (
echo "An Error Occured, Please Check The Log (option 23)"
PAUSE
)
cd ..
goto restart
:co
IF NOT EXIST "%~dp0projects\%capp%" GOTO dirnada
cd other
if (%jar%)==(0) (echo Building Apk)
if (%jar%)==(1) (echo Building Jar)
IF EXIST "%~dp0place-apk-here-for-modding\System_%capp%" (del /Q "%~dp0place-apk-here-for-modding\System_%capp%")
java -Xmx%heapy%m -jar apktool.jar b "../projects/%capp%" "%~dp0place-apk-here-for-modding\System_%capp%"
if (%jar%)==(0) (goto :nojar)
7za x -o"../projects/temp" "../place-apk-here-for-modding/%capp%" META-INF -r
7za a -tzip "../place-apk-here-for-modding/System_%capp%" "../projects/temp/*" -mx%usrc% -r
rmdir /S /Q "../%~dp0projects/temp"
goto restart

:nojar
if errorlevel 1 (
echo "An Error Occured, Please Check The Log (option 21)"
PAUSE
goto restart
)
:nq1
echo Aside from the signatures, would you like to copy
echo over any additional files that you didn't modify
echo from the original apk in order to ensure least 
echo # of errors ^(y/n^)
set /P INPUT1=Type input: %=%
if %INPUT1%==y (call :nq2)
if %INPUT1%==n (call :nq3)
:nq2
rmdir /S /Q "%~dp0keep"
7za x -o"../keep" "../place-apk-here-for-modding/%capp%"
echo In the APK Multi-Tools folder u'll find
echo a keep folder. Within it, delete 
echo everything you have modified and leave
echo files that you haven't. If you have modified
echo any xml, then delete resources.arsc from that 
echo folder as well. Once done then press enter 
echo on this script.
PAUSE
7za a -tzip "../place-apk-here-for-modding/System_%capp%" "../keep/*" -mx%usrc% -r
rmdir /S /Q "%~dp0keep"

cd ..
goto restart
:nq3
7za x -o"../projects/temp" "../place-apk-here-for-modding/%capp%" META-INF -r
7za a -tzip "../place-apk-here-for-modding/System_%capp%" "../projects/temp/*" -mx%usrc% -r

rmdir /S /Q "%~dp0projects/temp"
goto restart

:co2
IF NOT EXIST "%~dp0projects\%capp%" GOTO dirnada
cd other
if (%jar%)==(0) (echo Building Apk)
if (%jar%)==(1) (echo Building Jar)
IF EXIST "%~dp0place-apk-here-for-modding\unsigned_%capp%" (del /Q "%~dp0place-apk-here-for-modding\unsigned_%capp%")
java -Xmx%heapy%m -jar apktool.jar b "../projects/%capp%" "%~dp0place-apk-here-for-modding\unsigned_%capp%"
if (%jar%)==(0) (goto :nojar2)
7za x -o"../projects/temp" "../place-apk-here-for-modding/%capp%" META-INF -r
7za a -tzip "../place-apk-here-for-modding/unsigned_%capp%" "../projects/temp/*" -mx%usrc% -r
rmdir /S /Q "../%~dp0projects/temp"
goto restart

:nojar2
if errorlevel 1 (
echo "An Error Occured, Please Check The Log (option 21)"
PAUSE
goto restart
)
:nq4
cls
echo  ---------------------------------------------------------------------------
echo  1. Create an unsigned apk using the keep folder option
echo  2. Create an unsigned apk
echo     *Notice* Options 3 and 4 are experimental use with care *Notice*
echo  3. Create an apk using the original Signature using the keep folder option
echo  4. Create an apk using the original Signature
echo     *Notice* Options 3 and 4 are experimental use with care *Notice*
echo  ---------------------------------------------------------------------------
set /P INPUT=Type input 1 - 4: %=%
if %INPUT%==1 (call :nq5)
if %INPUT%==2 (call :nq6)
if %INPUT%==3 (call :nq7)
if %INPUT%==4 (call :nq8)
:nq5
rmdir /S /Q "%~dp0keep"
7za x -o"../keep" "../place-apk-here-for-modding/%capp%"
rmdir /S /Q "%~dp0keep/META-INF/"
echo In the APK Multi-Tools folder u'll find
echo a keep folder. Within it, delete 
echo everything you have modified and leave
echo files that you haven't. If you have modified
echo any xml, then delete resources.arsc from that 
echo folder as well. Once done then press enter 
echo on this script.
PAUSE
7za a -tzip "../place-apk-here-for-modding/unsigned_%capp%" "../keep/*" -mx%usrc% -r
rmdir /S /Q "%~dp0keep"
cd ..
goto restart
:nq6
goto restart

:nq7
rmdir /S /Q "%~dp0keep"
7za x -o"../keep" "../place-apk-here-for-modding/%capp%"
echo In the APK Multi-Tools folder u'll find
echo a keep folder. Within it, delete 
echo everything you have modified and leave
echo files that you haven't. If you have modified
echo any xml, then delete resources.arsc from that 
echo folder as well. Once done then press enter 
echo on this script.
PAUSE
xcopy "unsigned_%capp%" "signed_%capp%" /A /Y /V
DEL "../place-apk-here-for-modding/unsigned_%capp%"
7za a -tzip "../place-apk-here-for-modding/signed_%capp%" "../keep/*" -mx%usrc% -r
rmdir /S /Q "%~dp0keep"
cd ..
goto restart
:nq8
xcopy "unsigned_%capp%" "signed_%capp%" /A /Y /V
DEL "../place-apk-here-for-modding/unsigned_%capp%"
7za x -o"../projects/temp" "../place-apk-here-for-modding/%capp%" META-INF -r
7za a -tzip "../place-apk-here-for-modding/signed_%capp%" "../projects/temp/*" -mx%usrc% -r
rmdir /S /Q "%~dp0projects/temp"
goto restart
:q1
echo Would you like to copy over additional files 
echo that you didn't modify from the original apk in order to ensure least 
echo # of errors ^(y/n^)
set /P INPU=Type input: %=%
if %INPU%==y (goto nq4)
if %INPUT1%==n (call :restart)
:si
cd other
echo Signing Apk
java -Xmx%heapy%m -jar signapk.jar -w testkey.x509.pem testkey.pk8 ../place-apk-here-for-modding/unsigned_%capp% ../place-apk-here-for-modding/signed_%capp%
if errorlevel 1 (
echo "An Error Occured, Please Check The Log (option 23)"
PAUSE
)

DEL /Q "../place-apk-here-for-modding/unsigned_%capp%"
cd ..
goto restart
:ins
echo Waiting for device
"%~dp0other\adb.exe" wait-for-device
echo Installing Apk
"%~dp0other\adb.exe" install -r place-apk-here-for-modding/signed_%capp%
if errorlevel 1 (
echo "An Error Occured, Please Check The Log (option 23)"
PAUSE
)
goto restart
:all
IF NOT EXIST "%~dp0projects\%capp%" GOTO dirnada
cd other
echo Building Apk
IF EXIST "%~dp0place-apk-here-for-modding\unsigned_%capp%" (del /Q "%~dp0place-apk-here-for-modding\unsigned_%capp%")
java -Xmx%heapy%m -jar apktool.jar b "../projects/%capp%" "%~dp0place-apk-here-for-modding\unsigned_%capp%"
if errorlevel 1 (
echo "An Error Occured, Please Check The Log (option 23)"
PAUSE
goto restart
)
echo Signing Apk
java -Xmx%heapy%m -jar signapk.jar -w testkey.x509.pem testkey.pk8 ../place-apk-here-for-modding/unsigned_%capp% ../place-apk-here-for-modding/signed_%capp%
if errorlevel 1 (
echo "An Error Occured, Please Check The Log (option 23)"
PAUSE
)
DEL /Q "../place-apk-here-for-modding/unsigned_%capp%"
cd ..
echo Waiting for device
"%~dp0other\adb.exe" wait-for-device
echo Installing Apk
"%~dp0other\adb.exe" install -r place-apk-here-for-modding/signed_%capp%
if errorlevel 1 (
echo "An Error Occured, Please Check The Log (option 23)"
PAUSE
)
goto restart
:errjava
cls
echo Java was not found, you will not be able to sign apks or use apktool
PAUSE
goto restart
:erradb
cls
echo Adb was not found, you will not be able to manipulate the files on your phone
PAUSE
goto restart
goto skipme2
:adbi
mode con:cols=48 lines=8
echo Waiting for device
"%~dp0other\adb.exe" wait-for-device
set count=0
:loop
if "%~n1"=="" goto :endloop
echo Installing %~n1
"%~dp0other\adb.exe" install -r %1
shift
set /a count+=1
goto :loop
:endloop
goto quit

:recursive
for /f "tokens=%cc% delims=\" %%b in ('echo %info%') do (
echo %%b
set /a cc = %cc% + 1
goto recursive
)
echo.
goto recall
:logr
cd other
Start "Read The Log - Main script is still running, close this to return" signer 1
goto restart
:endab
cd ..
@echo Optimization complete for %~1
:quit
exit

:end
exit