@ECHO off
setlocal enabledelayedexpansion
COLOR 0A
IF (%1)==(0) goto skipme
IF (%1) neq () goto adbi
ECHO -------------------------------------------------------------------------- >> APK-Multi-Tool.log
ECHO ^|%date% -- %time%^| >> APK-Multi-Tool.log
ECHO -------------------------------------------------------------------------- >> APK-Multi-Tool.log
Script 0 2>> APK-Multi-Tool.log
:error
:skipme
cd "%~dp0"
mode con:cols=140 lines=50
CLS
set usrc=9
set resusrc=0
set dec=0
set capp=None
set heapy=512
set jar=0
java -version 
IF errorlevel 1 goto errjava
"%~dp0other\adb.exe" version 
IF errorlevel 1 goto erradb
set /A count=0
FOR %%F IN (place-apk-here-for-modding/*.apk) DO (
set /A count+=1
set tmpstore=%%~nF%%~xF
)
IF %count%==1 (set capp=%tmpstore%)
:skipme2
CLS
ECHO                                                    ,                            ,.::,                                              
ECHO                           OB@@@B@B@:       .@B@@@@@@@@@B@B@E.   @B@B@B.  .uB@B@B@BSi,                                              
ECHO                         7@B@@@ 7B@B@8      ,B@@@B@.,,r@@B@B@U   B@B@B@kMB@B@B@5                                                    
ECHO                       .B@B@B@7..@B@B@BS    ,@B@B@BMM@BOP5vi     @B@B@B@B@q@B@B@Mr                                                  
ECHO                     ,@B@B@@X2ZOMS2M@@@B@F  :B@B@B@              @@B@B@Y    7B@B@B@BJ,                                              
ECHO                     ivi...,        ...:iL,  :....:              :....:       .:.::7L:                                              
ECHO                                                .
ECHO                                               .:                                                                                   
ECHO                                                ir,                                                                                 
ECHO                                                 :r.   , ,            ,.,                                                           
ECHO                                                ,,ii:::.::::iiii:., .::,                                                            
ECHO                                             .:i:.,,,, , ,,,,..:i7777i,                                                             
ECHO                                          .i7i.,, , , ,,,,,,.,..:::i77L7i,                                                          
ECHO                                        :77r..., ,       ,,.....::::iii7vLi,                                                        
ECHO                                      :rrii::.,,, ,,  ,,,,......::::i:iiiiLvi                                                       
ECHO                                     7L18F::..,,,,,,,,,......:.::::::::::::rLr                                                      
ECHO                               ...:iLYr2@@v,......,,....,,..:::::::.....:.::rLi                                                     
ECHO                             ,ii.,.7Lvrrr7i:::::...:::.:r1X7:i::::.......:::i77,                                                    
ECHO                             ,vr:::LJ77rririiii:::i:i::7@@Mi:ii:::::::::::iiiiU.                                                    
ECHO                             ,rvi::uXYr77v77rr;ri;;rrriiii.i;r;;iiii:iiiii:i7k8.                                                    
ECHO                             ,7ii.:iYFSY7rr7vvv7vr7r7rr;iirrr777777r7rr;rivUN0k.                                                    
ECHO                             ,7i:..;::rJU2JL77rrr777777v7v7v7v7777rrrvvYu15kL:,,:vvi                                                
ECHO                             ,7::..ii::.::r7vvv7777r7rr;ririr;77v7vvLvv77rLLi,  .rjFi                                               
ECHO                             ,r:..,rr:::::..,,,.:::::::i:::i:::..::::iir7vYjri:::rv1i                                               
ECHO                             ,r...,iL::.:::.......,       ,:, ,  .iiirrir7JLrii::;vui                                               
ECHO                             ,r.,,,iv7:.,........:.,,,,.,,.:.,,.,:ii:iiii7vYr::::i7U:                                               
ECHO                              :::,.ivrri:.,,,,.....,,,,,,,.:.,.,,.::::i:i7LLr::.::vui                                               
ECHO                                ,,,i7r;rri:.,,,,,.,,,,,,,,,:,,,,,....::::r7Li:...:7U:                                               
ECHO                                   .Lrri;i;ii::...,,,,,,, ,..,,,,,.,....:;7vi....:vUi                                               
ECHO                                   :vr;iiiiiii:ii;:::::::::ri::::::i::...rrv:.,.,:71i                                               
ECHO                                   :Lrriiii:::::iii:::::i:iri::::irr77vvv7YL: ,,,.L5;                                               
ECHO                                   :uvr;ii:i:::::i::::::::iri::::iir;rr77YuF7.,,,:uU.                                               
ECHO                                    :LLrrii:::::iii:::i:::ir;:i:iir;rr77vv2E8v..::.                                                 
ECHO                                     ,:777ii:::iiiiiiii;irr7rri;ir;rrrrLY2Lr.                                                       
ECHO                                        ,.ii:.::..::::ii;i;ii::.::::::ri.,                                                          
ECHO                                           vr:....:i:.,.,.,,,..::::rr7u.                                                            
ECHO                                            :::::iLr.       iL7;i:ii7v1.                                                            
ECHO                                                            :v::...irY1:                                                            
ECHO                                                            .ri....:j2Y,                                                            
ECHO                                                              ,..:.::.                                                              
ECHO                                                Written by
ECHO                                    Gerald Wayne Baggett Jr AKA Raziel23x
ECHO                                           http://apkmultitool.com
ECHO   rL7vvL    iLv77J               .LvL:     :.    ULJv        0NPFjr77LFPqG,                          u7L7                          
ECHO   @B@@@BB  r@B@B@B, .:.:   .:.:  1@@@X :5B@B@ir  BMMO        M@OZB@B@BZOBB   ,iLLr.       ,iYvr,    ,B@B@                          
ECHO   B@@P.@BU,@@1:@B@  B@B@.  @B@B, LB@Bj P@@B@BNN  @B@B ,rii;7     JB@B@    :@@@BuJ@B@@J iB@B@uuB@B@Y  @B@@                          
ECHO   @@@@ r@B@B@ iB@B  @B@BF,:B@B@  u@@@F  .B@BM    B@@@ vB@@@@:    0@B@B    @B@BL  .@@@@ M@B@v  :@@B@  B@B@                          
ECHO   q@B0  u@BM  i@B@   kM@B@5kBBB  rBBBv   5M@@@Z  @B@O            uBMBO     .J8B@@@82:   .uZ@B@BOu:   @M@O
PAUSE
CLS
:restart
IF %dec%==0 (set decs=Sources and Resources Files)
IF %dec%==1 (set decs=Source Files only)
IF %dec%==2 (set decs=Resource Files only)
IF %dec%==3 (set decs=Raw Format Only)
cd "%~dp0"
set menunr=GARBAGE
CLS
ECHO  --------------------------------------------------------------------------------------------------------------------------
ECHO ^| Compression-Level: %usrc% ^| Resources.arsc Compression-Level: %resusrc% ^| Heap Size: %heapy%mb ^|  
ECHO  --------------------------------------------------------------------------------------------------------------------------
ECHO ^| Decompile : %decs% ^| Current-App: %capp% ^|
ECHO  --------------------------------------------------------------------------------------------------------------------------
ECHO                                                    HTTP://APKMULTITOOL.COM
ECHO  ----------------------------------         ------------------------------------        -----------------------------------
ECHO  Simple Tasks Such As Image Editing         Advanced Tasks Such As Code Editing         Themers Convertion Tools
ECHO  ----------------------------------         ------------------------------------        -----------------------------------
ECHO  0    Adb pull                              9    Decompile apk                          16   Batch Theme Image Transfer
ECHO  1    Extract apk                           10   Decompile apk (with dependencies)          (Read the Instructions before
ECHO  2    Optimize images inside                     (For proprietary rom apks)                    using this feature)
ECHO  3    Zip apk                               11   Compile System APK files               17   Batch Decompile apk Files                  
ECHO  4    Sign apk with Testkeys (Dont          12   Compile Non-System APK Files           18   Batch Compile apk Files                          
ECHO       do this IF its a system apk)          13   Sign apk with Android Market 
ECHO  5    Zipalign apk (Do once apk is               supported Key
ECHO       created/signed)                       14   Install apk    
ECHO       Install apk (Dont do this IF          15   Compile apk / Sign apk / Install apk
ECHO       system apk, do adb push)                   (Non-System Apps Only)
ECHO  7    Zip / Sign / Install apk 
ECHO       (All in one step)
ECHO  8    Adb push (Only for system apk)
ECHO  -----------
ECHO  tools Stuff
ECHO  -----------
ECHO  19   Batch Optimize Apk (inside place-apk-here-to-batch-optimize only)
ECHO  20   Sign an apk(Batch support)(inside place-apk-here-for-signing folder only)
ECHO  21   Batch optimize ogg files (inside place-ogg-here only)
ECHO  22   Clean Files/Folders
ECHO  23   Select compression level for apk's
ECHO  24   Select compression level for Resources.arsc
ECHO  25   Set Max Memory Size (Only use IF getting stuck at decompiling/compiling)
ECHO  26   Read Log
ECHO  27   Set current project
ECHO  28   About / Tips / Debug Section
ECHO  29   Switch decompile mode (Allows you to pick to fully decompile the APK's or JAR's
ECHO       or to just decompile Sources or just the Resources or do a raw dump allowing you
ECHO       to just edit the normal images)
ECHO  30   Donations
ECHO       I would personally like to thank you for your superior generosity and kindness if 
EVHO       you are one of those droid loving fans donating to the site to help keep us going.
ECHO       We hope to continue growing and for development to keep getting bigger and bigger
ECHO       as time goes on. Until then, Hope to see you around! Have a great day!" 
ECHO  00   Quit
ECHO  -------------------------------------------------------------------------------
SET /P menunr=Please make your decision:

IF %menunr%==0 (goto ap)
IF %menunr%==1 (goto ex)
IF %menunr%==2 (goto opt)
IF %menunr%==3 (goto zip)
IF %menunr%==4 (goto stki)
IF %menunr%==5 (goto zipa)
IF %menunr%==6 (goto ins)
IF %menunr%==7 (goto alli)
IF %menunr%==8 (goto apu)
IF %menunr%==9 (goto de)
IF %menunr%==10 (goto ded)
IF %menunr%==11 (goto syscom)
IF %menunr%==12 (goto nonsyscom)
IF %menunr%==13 (goto apksignerkey)
IF %menunr%==14 (goto ins)
IF %menunr%==15 (goto all)
IF %menunr%==16 (goto btit)
IF %menunr%==17 (goto batdec)
IF %menunr%==18 (goto batcom)
IF %menunr%==19 (goto bopt)
IF %menunr%==20 (goto asi)
IF %menunr%==21 (goto ogg)
IF %menunr%==22 (goto cleanp)
IF %menunr%==23 (goto usrcomp)
IF %menunr%==24 (goto resusrcomp)
IF %menunr%==25 (goto heap)
IF %menunr%==26 (goto logr)
IF %menunr%==27 (goto filesel)
IF %menunr%==28 (goto about)
IF %menunr%==29 (goto switchc)
IF %menunr%==30 (goto dotome)
IF %menunr%==00 (goto quit)
IF %capp%==None goto noproj

:WHAT
ECHO You went crazy and entered something that wasnt part of the menu options
PAUSE
goto restart
:switchc
set /a dec+=1 
IF (%dec%)==(4) (set /a dec=0)
goto restart
:cleanp
ECHO 1. Clean This Project's Folder
ECHO 2. Clean All Apk's in Modding Folder
ECHO 3. Clean All OGG's in OGG Folder
ECHO 4. Clean All Apk's in Optimize Folder
ECHO 5. Clean All Apk's in Signing Folder
ECHO 6. Clean All Projects
ECHO 7. Clean All Folders/Files
ECHO 8. Go Back To MAIN MENU
SET /P menuna=Please make your decision:
ECHO Clearing Directories
IF %menuna%==1 (
IF %capp%==None goto noproj
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
CLS
ECHO About
ECHO -----
type other\version.txt
ECHO Updates and Support Site
ECHO Please Visit the Official Website for updated information and to check out the latest official releases
ECHO The Website Address is http://apkmultitool.com
ECHO ----
ECHO Tips
ECHO ----
ECHO 1. IF Modifying system apps, never resign them unless you want to resign all
ECHO apk's that share its shared:uid
ECHO 2. IF decompiling/recompiling system apps and IF AndroidManifest.xml was not
ECHO preserved from the original apk, then either push the apk when in recovery or
ECHO by doing :
ECHO adb remount
ECHO adb shell stop
ECHO adb push something.apk /wherever/something.apk
ECHO adb shell start
ECHO 3. Decompiling a themed apk is not possible, you must get the original unthemed
ECHO apk, then decompile, make your theme/xml changes and recompile
ECHO 4. IF you're stuck and the log doesnot give you any indication as to what you 
ECHO are doing wrong, then post in the thread http://www.tiny.cc/apkmanager
ECHO Make sure u include ur APK-Multi-Tool.log, and IF its not a editing problem i.e 
ECHO its something regarding when u push it to your phone, then post ur adb log 
ECHO as well. To do so 
ECHO follow these steps :
ECHO 1. Connect ur phone to ur pc
ECHO 2. Push/install the app on your phone
ECHO 3. Select "Create Log" option on this menu
ECHO 4. Let the new window run for 10 seconds, then close it
ECHO Once done, you will find a adblog.txt in the root folder
ECHO Upload that as well.
ECHO.
ECHO 1. Create log
ECHO 2. Go back to MAIN MENU
SET /P menunr=Please make your decision:
IF %menunr%==1 (Start "Adb Log" other\signer 2)
goto restart
:portapk
ECHO Im going to try resigning the apk and see IF that works
ECHO Did it successfully install (y/n) ^?
ECHO Ok, lets try looking through for any shared uid, IF i find any i will remove them
:filesel
CLS
set /A count=0
FOR %%F IN (place-apk-here-for-modding/*.apk) DO (
set /A count+=1
set a!count!=%%F
IF /I !count! LEQ 9 (ECHO ^- !count!  - %%F )
IF /I !count! GTR 10 (ECHO ^- !count! - %%F )
)
ECHO.
ECHO Choose the app to be set as current project?
set /P INPUT=Enter It's Number: %=%
IF /I %INPUT% GTR !count! (goto chc)
IF /I %INPUT% LSS 1 (goto chc)
set capp=!a%INPUT%!
set jar=0
set ext=jar
IF "!capp:%ext%=!" NEQ "%capp%" set jar=1
goto restart
:chc
set capp=None
goto restart

:heap
set /P INPUT=Enter max size for java heap space in megabytes (eg 512) : %=%
set heapy=%INPUT%
CLS
goto restart
:usrcomp
set /P INPUT=Enter Compression Level (0-9) : %=%
set usrc=%INPUT%
CLS
goto restart
:resusrcomp
set /P INPUT=Enter Compression Level (0-9) : %=%
set resusrc=%INPUT%
CLS
goto restart
:btit
ECHO Batch Theme Image Transfer TOOL
ECHO Expermental use with caution
ECHO This tool makes the process of transferring images from one APK file to another 
ECHO APK File of the same file making it easier to update themes or even transferring
ECHO a theme update.zip of one ROM to another Rom allowing the porting of theme to
ECHO be much faster.
ECHO (Note: You will have to manually replace the progress_horizontals.xml from the
ECHO framework-res since this file is needed with Theme Changes)
PAUSE
cd themer
Start "Begining porting of themes" tporter
goto restart
:batdec
cls
ECHO This will Decompile all the APK files inside of the place-apk-here-for-modding
ECHO and add the Decompiled Versions into the Project folder as if you decompiled
ECHO all the APK FILES one at a time using option 9
PAUSE
cd other
Start "Begining Batch Decompiling of all the APK Files" batdecomp
goto restart
:batcom
cls
ECHO This will Compile all the APK files inside of the project folder
ECHO and add the Compiled Versions into the place-apk-here-for-signing folder as if you 
ECHO compiled all the APK FILES one at a time using option 12 sub option 2
PAUSE
cd other
Start "Begining Batch Compiling of all the APK Files" batcomp
goto restart
:ogg
cd other
mkdir temp
ECHO Optimizing Ogg
FOR %%F IN ("../place-ogg-here/*.ogg") DO sox "../place-ogg-here/%%F" -C 0 "temp\%%F"
cd ..
MOVE other\temp\*  place-ogg-here
rmdir /S /Q other\temp
goto restart
:alli
IF NOT EXIST "%~dp0projects\%capp%" GOTO dirnada
CLS
ECHO 1    System apk (Retains signature)
ECHO 2    Regular apk (Removes signature for re-signing)
SET /P menunr=Please make your decision: 
IF %menunr%==1 (goto sys1)
IF %menunr%==2 (goto oa1)
:sys1
ECHO Zipping Apk
cd other
7za a -tzip "../place-apk-here-for-signing/unsigned%capp%" "../projects/%capp%/*" -mx%usrc%
IF errorlevel 1 (
ECHO "An Error Occured, Please Check The Log (option 26)"
PAUSE
)
cd ..
goto si1
:oa1
cd other
ECHO Zipping Apk
rmdir /S /Q "../out/META-INF"
7za a -tzip "../place-apk-here-for-signing/unsigned%capp%" "../projects/%capp%/*" -mx%usrc%
IF errorlevel 1 (
ECHO "An Error Occured, Please Check The Log (option 26)"
PAUSE
)
cd ..
:si1
cd other
ECHO Signing Apk
java -Xmx%heapy%m -jar signapk.jar -w testkey.x509.pem testkey.pk8 ../place-apk-here-for-signing/unsigned%capp% ../place-apk-here-for-signing/signed%capp%
IF errorlevel 1 (
ECHO "An Error Occured, Please Check The Log (option 26)"
PAUSE
)
DEL /Q "../place-apk-here-for-signing/unsigned%capp%"
cd ..
:ins1
ECHO Waiting for device
"%~dp0other\adb.exe" wait-for-device
ECHO Installing Apk
"%~dp0other\adb.exe" install -r %~dp0place-apk-here-for-signing/signed%capp%
IF errorlevel 1 (
ECHO "An Error Occured, Please Check The Log (option 26)"
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
IF (%INPUT%)==(zp) GOTO zipb
IF (%INPUT%)==(z) GOTO zipo
:zipb
@ECHO Optimizing %~1...
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
IF (%INPUT%)==(p) GOTO ponly
7za a -tzip "optimized\%~n1.unaligned.apk" "%~dp0other\apkopt_temp_%~n1\*" -mx%usrc% 
rd /s /q "apkopt_temp_%~n1"
"%~dp0other\zipalign.exe" -v 4 "optimized\%~n1.unaligned.apk" "optimized\%~n1.apk"
del /q "optimized\%~n1.unaligned.apk"
goto endab
:ponly
7za a -tzip "optimized\%~n1.apk" "%~dp0other\apkopt_temp_%~n1\*" -mx%usrc%
rd /s /q "apkopt_temp_%~n1"
goto endab
:zipo
@ECHO Optimizing %~1...
"%~dp0other\zipalign.exe" -v 4 "%~dp0place-apk-here-to-batch-optimize\%~n1%~x1" "%~dp0place-apk-here-to-batch-optimize\u%~n1%~x1"
del /q "%~dp0place-apk-here-to-batch-optimize\%~n1%~x1"
rename "%~dp0place-apk-here-to-batch-optimize\u%~n1%~x1" "%~n1%~x1"
goto endab
:dirnada
ECHO %capp% has not been extracted, please do so before doing this step
PAUSE
goto restart
:opt
IF NOT EXIST "%~dp0projects\%capp%" GOTO dirnada
mkdir temp
xcopy "%~dp0projects\%capp%\res\*.9.png" "%~dp0temp" /S /Y
cd other
ECHO Optimizing Png's
roptipng -o99 "../projects/%capp%/**/*.png"
cd ..
xcopy "%~dp0temp" "%~dp0projects\%capp%\res" /S /Y
rmdir temp /S /Q
goto restart
:noproj
ECHO Please Select A Project To Work On (Option #27)
PAUSE
goto restart
:ap
ECHO Where do you want adb to pull the apk from? 
ECHO Example of input : /system/app/launcher.apk
set /P INPUT=Type input: %=%
ECHO Pulling apk
"%~dp0other\adb.exe" pull %INPUT% "%~dp0place-apk-here-for-modding\something.apk"
IF errorlevel 1 (
ECHO "An Error Occured, Please Check The Log (option 26)"
PAUSE
goto restart
)
set jar=0
set ext=jar
IF "!INPUT:%ext%=!" NEQ "%INPUT%" set jar=1
:renameagain
ECHO What filename would you like this app to be stored as ?
ECHO Eg (launcher.apk)
set /P INPUT=Type input: %=%
IF EXIST "%~dp0place-apk-here-for-modding\%INPUT%" (
ECHO File Already Exists, Try Another Name
PAUSE
goto renameagain)
rename "%~dp0place-apk-here-for-modding\something.apk" %INPUT%
ECHO Would you like to set this as your current project (y/n)?
set /P inab=Type input: %=%
IF %inab%==y (set capp=%INPUT%)
goto restart
:apu
ECHO Do you want to keep the file name ? (any key for yes, n for no)
set /p INPUT=""
if %INPUT%==n (
ECHO "Enter the new name: "
set /P newcapp=Type input: %=%
set newname=1
goto push_dir
)
set newname=0 
 
:push_dir
ECHO Where do you want adb to push to ? (f) for framework and (a) for app
set /P fileloc=""
"%~dp0other\adb.exe" devices >null
"%~dp0other\adb.exe" remount
ECHO Pushing apk
if %fileloc%==a (
if %newname%==0 (
"%~dp0other\adb.exe" push "place-apk-here-for-modding\system%capp%" /system/app/%capp%
goto chk_err_push
)
if %newname%==1 (
"%~dp0other\adb.exe" push "place-apk-here-for-modding\system%capp%" /system/app/%newcapp%
goto chk_err_push
)
)
if %fileloc%==f (
if %newname%==0 (
"%~dp0other\adb.exe" push "place-apk-here-for-modding\system%capp%" /system/framework/%capp%
goto chk_err_push
)
if %newname%==1 (
"%~dp0other\adb.exe" push "place-apk-here-for-modding\system%capp%" /system/framework/%newcapp%
goto chk_err_push
)
)
ECHO "u pressed the wrong key"
goto push_dir

:chk_err_push
IF errorlevel 1 (
ECHO "An Error Occured, Please Check The Log (option 26)"
PAUSE
)
goto restart
:zipa
ECHO Zipaligning Apk
IF EXIST "%~dp0place-apk-here-for-signing\signed%capp%" "%~dp0other\zipalign.exe" -f 4 "%~dp0place-apk-here-for-signing\signed%capp%" "%~dp0place-apk-here-for-modding\signedaligned%capp%"

IF EXIST "%~dp0place-apk-here-for-signing\unsigned%capp%" "%~dp0other\zipalign.exe" -f 4 "%~dp0place-apk-here-for-signing\unsigned%capp%" "%~dp0place-apk-here-for-signing\unsignedaligned%capp%"

IF errorlevel 1 (
ECHO "An Error Occured, Please Check The Log (option 26)"
PAUSE
)
DEL /Q "%~dp0place-apk-here-for-signing\signed%capp%"
DEL /Q "%~dp0place-apk-here-for-signing\unsigned%capp%"
rename "%~dp0place-apk-here-for-signing\signedaligned%capp%" signed%capp%
rename "%~dp0place-apk-here-for-signing\unsignedaligned%capp%" unsigned%capp%
goto restart
:ex
cd other
ECHO Extracting apk
IF EXIST "../projects/%capp%" (rmdir /S /Q "../projects/%capp%")
7za x -o"../projects/%capp%" "../place-apk-here-for-modding/%capp%"
IF errorlevel 1 (
ECHO "An Error Occured, Please Check The Log (option 26)"
PAUSE
)
cd ..
goto restart
:zip
IF NOT EXIST "%~dp0projects\%capp%" GOTO dirnada
CLS
ECHO 1    System apk (Retains signature)
ECHO 2    Regular apk (Removes signature for re-signing)
SET /P menunr=Please make your decision: 
IF %menunr%==1 (goto sys)
IF %menunr%==2 (goto oa)
:sys
ECHO Zipping Apk
cd other
7za a -tzip "../place-apk-here-for-signing/unsigned%capp%" "../projects/%capp%/*" -mx%usrc%
IF errorlevel 1 (
ECHO "An Error Occured, Please Check The Log (option 26)"
PAUSE
)

cd ..
goto restart
:oa
cd other
ECHO Zipping Apk
rmdir /S /Q "../out/META-INF"
7za a -tzip "../place-apk-here-for-signing/unsigned%capp%" "../projects/%capp%/*" -mx%usrc%
IF errorlevel 1 (
ECHO "An Error Occured, Please Check The Log (option 26)"
PAUSE
)

cd ..
goto restart
:ded
cd other
IF EXIST "%~dp0place-apk-here-for-signing\unsigned%capp%" (del /Q "%~dp0place-apk-here-for-signing\unsigned%capp%")
:temr
ECHO Drag the dependee apk in this window or type its path
ECHO Example to decompile Rosie.apk, drag com.htc.resources.apk in this window
set /P INPUT=Type input: %=%
java -jar apktool.jar IF %INPUT%
IF NOT EXIST "%userprofile%\apktool\framework\2.apk" (
ECHO.
ECHO "Sorry thats not the dependee apk, try again"
goto temr
)
IF (%jar%)==(0) (ECHO Decompiling Apk %decs%)
IF (%jar%)==(1) (ECHO Decompiling Jar %decs%)
IF (%dec%)==(0) (java -Xmx%heapy%m -jar apktool.jar d ../place-apk-here-for-modding/%capp% ../projects/%capp%)
IF (%dec%)==(1) (java -Xmx%heapy%m -jar apktool.jar d -r ../place-apk-here-for-modding/%capp% ../projects/%capp%)
IF (%dec%)==(2) (java -Xmx%heapy%m -jar apktool.jar d -s ../place-apk-here-for-modding/%capp% ../projects/%capp%)
IF (%dec%)==(3) (java -Xmx%heapy%m -jar apktool.jar d -r -s ../place-apk-here-for-modding/%capp% ../projects/%capp%)

IF errorlevel 1 (
ECHO "An Error Occured, Please Check The Log (option 26)"
PAUSE
)
cd ..
goto restart
:de
cd other
IF EXIST "../place-apk-here-for-signing/system%capp%" (del /Q "../place-apk-here-for-signing\system%capp%")
IF EXIST "../place-apk-here-for-signing/unsigned%capp%" (del /Q "../place-apk-here-for-signing\unsigned%capp%")
IF EXIST "../place-apk-here-for-signing/signed%capp%" (del /Q "../place-apk-here-for-signing\signed%capp%")

IF EXIST "../projects/%capp%" (rmdir /S /Q "../projects/%capp%")
IF (%jar%)==(0) (ECHO Decompiling Apk %decs%)
IF (%jar%)==(1) (ECHO Decompiling Jar %decs%)
IF (%dec%)==(0) (java -Xmx%heapy%m -jar apktool.jar d ../place-apk-here-for-modding/%capp% ../projects/%capp%)
IF (%dec%)==(1) (java -Xmx%heapy%m -jar apktool.jar d -r ../place-apk-here-for-modding/%capp% ../projects/%capp%)
IF (%dec%)==(2) (java -Xmx%heapy%m -jar apktool.jar d -s ../place-apk-here-for-modding/%capp% ../projects/%capp%)
IF (%dec%)==(3) (java -Xmx%heapy%m -jar apktool.jar d -r -s ../place-apk-here-for-modding/%capp% ../projects/%capp%)

IF errorlevel 1 (
ECHO "An Error Occured, Please Check The Log (option 26)"
PAUSE
)
cd ..
goto restart
:syscom
IF NOT EXIST "%~dp0projects\%capp%" GOTO dirnada
cd other
IF (%jar%)==(0) (ECHO Building Apk)
IF (%jar%)==(1) (ECHO Building Jar)
IF EXIST "%~dp0place-apk-here-for-signing\system%capp%" (del /Q "%~dp0place-apk-here-for-signing\system%capp%")
java -Xmx%heapy%m -jar apktool.jar b "../projects/%capp%" "%~dp0place-apk-here-for-signing\system%capp%"
IF (%jar%)==(0) (goto :nojar)
7za x -o"../projects/temp" "../place-apk-here-for-signing/%capp%" META-INF -r
7za a -tzip "../place-apk-here-for-signing/system%capp%" "../projects/temp/*" -mx%usrc% -r
rmdir /S /Q "../%~dp0projects/temp"
goto restart

:nojar
IF errorlevel 1 (
ECHO "An Error Occured, Please Check The Log (option 26)"
PAUSE
goto restart
)
:nq1
ECHO Aside from the signatures, would you like to copy
ECHO over any additional files that you didn't modify
ECHO from the original apk in order to ensure least 
ECHO # of errors ^(y/n^)
set /P INPUT1=Type input: %=%
IF %INPUT1%==y (call :nq2)
IF %INPUT1%==n (call :nq3)
:nq2
rmdir /S /Q "%~dp0keep"
7za x -o"../keep" "../place-apk-here-for-modding/%capp%"
ECHO In the APK Multi-Tools folder u'll find
ECHO a keep folder. Within it, delete 
ECHO everything you have modified and leave
ECHO files that you haven't. IF you have modified
ECHO any xml, then delete resources.arsc from that 
ECHO folder as well. Once done then press enter 
ECHO on this script.
PAUSE
7za a -tzip "../place-apk-here-for-signing/system%capp%" "../keep/*" -mx%usrc% -r
rmdir /S /Q "%~dp0keep"
7za x -o"../projects/temp" "../place-apk-here-for-modding/%capp%" resources.arsc -r
7za a -tzip "../place-apk-here-for-signing/system%capp%" "../projects/temp/resources.arsc" -mx%resusrc% -r
rmdir /S /Q "%~dp0projects/temp"
cd ..
goto restart
:nq3
7za x -o"../projects/temp" "../place-apk-here-for-modding/%capp%" META-INF -r
7za a -tzip "../place-apk-here-for-signing/system%capp%" "../projects/temp/*" -mx%usrc% -r
rmdir /S /Q "%~dp0projects/temp"
goto restart

:nonsyscom
IF NOT EXIST "%~dp0projects\%capp%" GOTO dirnada
cd other
IF (%jar%)==(0) (ECHO Building Apk)
IF (%jar%)==(1) (ECHO Building Jar)
IF EXIST "%~dp0place-apk-here-for-signing\unsigned%capp%" (del /Q "%~dp0place-apk-here-for-signing\unsigned%capp%")
IF EXIST "%~dp0place-apk-here-for-signing\OriginalSignedKey%capp%" (del /Q "%~dp0place-apk-here-for-signing\OriginalSignedKey%capp%")
java -Xmx%heapy%m -jar apktool.jar b "../projects/%capp%" "%~dp0place-apk-here-for-signing\unsigned%capp%"
IF (%jar%)==(0) (goto :nojar2)
7za x -o"../projects/temp" "../place-apk-here-for-modding/%capp%" META-INF -r
7za a -tzip "../place-apk-here-for-signing/unsigned%capp%" "../projects/temp/*" -mx%usrc% -r
rmdir /S /Q "../%~dp0projects/temp"
goto restart

:nojar2
IF errorlevel 1 (
ECHO "An Error Occured, Please Check The Log (option 26)"
PAUSE
goto restart
)
:nq4
CLS
ECHO  ---------------------------------------------------------------------------
ECHO  1. Create an unsigned apk using the keep folder option
ECHO  2. Create an unsigned apk
ECHO     *Notice* Options 3 and 4 are experimental use with care *Notice*
ECHO  3. Create an apk using the original Signature using the keep folder option
ECHO  4. Create an apk using the original Signature
ECHO     *Notice* Options 3 and 4 are experimental use with care *Notice*
ECHO  ---------------------------------------------------------------------------
set /P INPUT=Type input 1 - 4: %=%
IF %INPUT%==1 (call :nq5)
IF %INPUT%==2 (call :nq6)
IF %INPUT%==3 (call :nq7)
IF %INPUT%==4 (call :nq8)
:nq5
rmdir /S /Q "%~dp0keep"
7za x -o"../keep" "../place-apk-here-for-modding/%capp%"
rmdir /S /Q "%~dp0keep/META-INF/"
ECHO In the APK Multi-Tools folder u'll find
ECHO a keep folder. Within it, delete 
ECHO everything you have modified and leave
ECHO files that you haven't. IF you have modified
ECHO any xml, then delete resources.arsc from that 
ECHO folder as well. Once done then press enter 
ECHO on this script.
PAUSE
7za a -tzip "../place-apk-here-for-signing/unsigned%capp%" "../keep/*" -mx%usrc% -r
rmdir /S /Q "%~dp0keep"
7za x -o"../projects/temp" "../place-apk-here-for-signing/%capp%" resources.arsc -r
7za a -tzip "../place-apk-here-for-signing/unsigned%capp%" "../projects/temp/resources.arsc" -mx%resusrc% -r
rmdir /S /Q "%~dp0projects/temp"
cd ..
PAUSE
goto restart
:nq6
goto restart

:nq7
rmdir /S /Q "%~dp0keep"
7za x -o"../keep" "../place-apk-here-for-modding/%capp%"
ECHO In the APK Multi-Tools folder u'll find
ECHO a keep folder. Within it, delete 
ECHO everything you have modified and leave
ECHO files that you haven't. IF you have modified
ECHO any xml, then delete resources.arsc from that 
ECHO folder as well. Once done then press enter 
ECHO on this script.
PAUSE

7za a -tzip "../place-apk-here-for-signing/unsigned%capp%" "../keep/*" -mx%usrc% -r
rmdir /S /Q "%~dp0keep"
7za x -o"../projects/temp" "../place-apk-here-for-signing/%capp%" resources.arsc -r
7za a -tzip "../place-apk-here-for-signing/unsigned%capp%" "../projects/temp/resources.arsc" -mx%resusrc% -r
rmdir /S /Q "%~dp0projects/temp"
rename "../place-apk-here-for-signing/unsigned%capp%" "../place-apk-here-for-signing/OriginalSignedKey%capp%"
cd ..
PAUSE
goto restart
:nq8
7za x -o"../projects/temp" "../place-apk-here-for-modding/%capp%" META-INF -r
7za a -tzip "../place-apk-here-for-signing/unsigned%capp%" "../projects/temp/*" -mx%usrc% -r
rmdir /S /Q "%~dp0projects/temp"
rename "../place-apk-here-for-signing/unsigned%capp%" "../place-apk-here-for-signing/OriginalSignedKey%capp%"
cd ..
PAUSE
goto restart
:apksignerkey
cd other
ECHO Signing Apk
set KEYSTORE_FILE=apksigner.keystore
set KEYSTORE_PASS=apksigner
set KEYSTORE_ALIAS=apksigner.keystore
set JAVAC_PATH=%JAVA_HOME%\bin\
set PATH=%PATH%;%JAVAC_PATH%;
call jarsigner -keystore %KEYSTORE_FILE% -storepass %KEYSTORE_PASS% -keypass %KEYSTORE_PASS% -signedjar ../place-apk-here-for-signing/signed%capp% ../place-apk-here-for-signing/unsigned%capp%  %KEYSTORE_ALIAS% %1
IF errorlevel 1 (
ECHO "An Error Occured, Please Check The Log (option 26)"
PAUSE
)

DEL /Q "../place-apk-here-for-signing/unsigned%capp%"
cd ..
goto restart
:stki
cd other
ECHO Signing Apk
java -Xmx%heapy%m -jar signapk.jar -w testkey.x509.pem testkey.pk8 ../place-apk-here-for-signing/unsigned%capp% ../place-apk-here-for-signing/signed%capp%
IF errorlevel 1 (
ECHO "An Error Occured, Please Check The Log (option 26)"
PAUSE
)

DEL /Q "../place-apk-here-for-signing/unsigned%capp%"
cd ..
goto restart
:ins
ECHO Waiting for device
"%~dp0other\adb.exe" wait-for-device
ECHO Installing Apk
"%~dp0other\adb.exe" install -r place-apk-here-for-signing/signed%capp%
IF errorlevel 1 (
ECHO "An Error Occured, Please Check The Log (option 26)"
PAUSE
)
goto restart
:all
IF NOT EXIST "%~dp0projects\%capp%" GOTO dirnada
cd other
ECHO Building Apk
IF EXIST "%~dp0place-apk-here-for-signing\unsigned%capp%" (del /Q "%~dp0place-apk-here-for-signing\unsigned%capp%")
java -Xmx%heapy%m -jar apktool.jar b "../projects/%capp%" "%~dp0place-apk-here-for-signing\unsigned%capp%"
IF errorlevel 1 (
ECHO "An Error Occured, Please Check The Log (option 26)"
PAUSE
goto restart
)
ECHO Signing Apk
java -Xmx%heapy%m -jar signapk.jar -w testkey.x509.pem testkey.pk8 ../place-apk-here-for-signing/unsigned%capp% ../place-apk-here-for-signing/signed%capp%
IF errorlevel 1 (
ECHO "An Error Occured, Please Check The Log (option 26)"
PAUSE
)
DEL /Q "../place-apk-here-for-signing/unsigned%capp%"
cd ..
ECHO Waiting for device
"%~dp0other\adb.exe" wait-for-device
ECHO Installing Apk
"%~dp0other\adb.exe" install -r place-apk-here-for-signing/signed%capp%
IF errorlevel 1 (
ECHO "An Error Occured, Please Check The Log (option 26)"
PAUSE
)
goto restart
:errjava
CLS
ECHO Java was not found, you will not be able to sign apks or use apktool
PAUSE
goto restart
:erradb
CLS
ECHO Adb was not found, you will not be able to manipulate the files on your phone
PAUSE
goto restart
goto skipme2
:adbi
mode con:cols=48 lines=8
ECHO Waiting for device
"%~dp0other\adb.exe" wait-for-device
set count=0
:loop
IF "%~n1"=="" goto :endloop
ECHO Installing %~n1
"%~dp0other\adb.exe" install -r %1
shift
set /a count+=1
goto :loop
:endloop
goto quit

:recursive
for /f "tokens=%cc% delims=\" %%b in ('ECHO %info%') do (
ECHO %%b
set /a cc = %cc% + 1
goto recursive
)
ECHO.
goto recall
:DOTOME
start %~dp0docs\donate.html
cls	
goto restart
:logr
cd other
Start "Read The Log - Main script is still running, close this to return" signer 1
goto restart
:endab
cd ..
@ECHO Optimization complete for %~1
:quit
exit

:end
exit
