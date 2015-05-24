Version 1.0.0
  
Added Switch decompile mode  
Added ability to decompile jar files  
Fixed Random Startup bug (hopefully)  
Updated the Android SDK TOOL SET to Latest Versions  
Added Required Files for application /other folder content  
Other changes I may of forgotten  
AUTO UPDATE script on launch of APK multi-tool ( may move it to a manual script )  
Updated Apktool to 1.4.3   
Added support for API14 (Android 4.0) resources  
Updated smali to v1.3.0  
Added --quiet option  
Fixed decoding error when string ends with '%' ( Issue 169 )  
Fixed decoding error when <plurals> contains a reference ( Issue 234 )  
Fixed a broken res when decoding <array> with positional substitutions ( Issue 222 )  
updated built-in framework to SDK API14  
fixed some "Multiple substitutions (...)" errors ( Issue 254 )  
  
  
Version 1.0.1  
  
FIXED BUG WITH Theme porter scripts - There was a typo in the file names  
FIXED BUG WITH ogg Optimizing  
FIXED BUG WITH Signer.bat  
FIXED BUG WITH ADB installer (HOPEFULLY)  
FIXED BUG WITH APK Signing batch (HOPEFULLY)  
FIXED BUG WITH ZipAlign scripts (HOPEFULLY)  
FIXED BUG WITH roptipng Scripts (HOPEFULLY)  
FIXED BUG WITH Keep Folder Not being created (HOPEFULLY)  
FIXED BUG WITH ADB Pull/Push  
FIXED BUG WITH ADB Detection  
FIXED BUG WITH Signing APK Files (HOPEFULLY)  
FIXED BUG WITH testkey.x509.pem Detection (HOPEFULLY)  
FIXED BUG WITH testkey.x509.pem Detection (HOPEFULLY)  
  
  
Version 1.0.2  
  
FIXED BUG WITH Theme porter scripts - There was a typo in the file names  
FIXED BUG WITH ogg Optimizing  
FIXED BUG WITH Signer.bat  
FIXED BUG WITH ADB installer (HOPEFULLY)  
FIXED BUG WITH APK Signing batch (HOPEFULLY)  
FIXED BUG WITH ZipAlign scripts (HOPEFULLY)  
FIXED BUG WITH roptipng Scripts (HOPEFULLY)  
FIXED BUG WITH Keep Folder Not being created (HOPEFULLY)  
FIXED BUG WITH ADB Pull/Push  
FIXED BUG WITH ADB Detection  
FIXED BUG WITH Signing APK Files (HOPEFULLY)  
FIXED BUG WITH testkey.x509.pem Detection (HOPEFULLY)  
FIXED BUG WITH testkey.x509.pem Detection (HOPEFULLY)  
FIXED BUG WITH Sox not compiling correctly when working with audio files (HOPEFULLY)  
FIXED BUG WITH minor bugs and code optimizations  
FIXED BUG WITH Optimizing PNG and 9.png files (HOPEFULLY)  
  
  
Version 1.0.3  
  
Updated to APKTOOL.JAR 1.4.5  
Fixed Issue with the Theme porter and removed two batch features that was redundant  
Updated the Documentation Files  
Updated Version information  
Added limited ICE (Android 4.0) Support experimental right now  
  
  
Version 1.0.4  
  
Fixed Signing Tool  
Fixed Batch File ZipAlign bug  
Fixed Batch optimize bug  
Complete rewrite of the update System  
Rewrote how the scripts run moving many features to a setup script  
Added New Feature that allows you to install framework-res for different Android OS to allow building and decompiling Multiple APK BUILDS  
Added New Feature that allows you to install twframework-res for different Android OS to allow building and decompiling Multiple APK BUILDS  
Added New Feature that allows you to install com.htc.resources for different Android OS to allow building and decompiling Multiple APK BUILDS  
Added New Feature that allows you to install SystemUI for different Android OS to allow building and decompiling Multiple APK BUILDS  
Fixed Batch Theme converter  
Minor Tweaks to the scripts to optimize usage  
  
  
Version 1.0.5  
  
FIXED Error Messages to output the correct Option to use to read the Error Logs  
UPDATE APKTOOL.JAR to 1.4.7 THIS FIXES MANY ISSUES with COMPILING and DECOMPILING ICE 4.0.X  
FIXED (DE)/Compiler Scripts  
FIXED MISC and other issues I may of forgotten  
  
  
Version 1.0.6 
  
Removed the need to have the Android SDK Installed  
Fixed Issue with the KEEP FOLDER Being Broken  
Set Default Heap to 512MB  
Update Version to APK Multi-Tools 1.0.6  
Fixed Error Message for LOG Number to the Correct Number  
Fixed Error Message for APK Project number  
  
  
Version 1.0.7  
  
Updated to next minor build number  
Updated Setup.bat Fixing Installing Framework-Res  
Fixed Issue With 'Apktool' is not recognized as an internal or external command, operable program or batch file."  
Fixed Issue with Installing Framework-Res pointing to a incorrect folder that no longer exist  
Fixed Issue when Running Installing Framework-Res scripts that the scripts will close after installing instead of going back to the menu.  
Updated APKTOOL.JAR to 1.4.9  
Added Custom AAPT that was built to work with JELLY BEAN  
Fixed issues with setup  
Made a few changes to the setup bat to fix alignment size and other misc issues  
Fixed Spelling  
Did some changes to see if I can fix the issue with The keep option to work with none system applications.  
Trying to get batch optimize to work  
Replacing odt with a actual manual in html  
Fixed Bug with KEEP Folder not extracting for None System Applications  
Tweaked how the Signed and Unsigned files are compiled adding a small underscore between the recompiled file and the added prefix added by the scripts  
Tweaked the option 11 for non system APKS  
I added the option to allow you to transfer the old key file over to the APK in case you did minor changes so be careful to test the APK files as some will need you to pick the unsigned option depending on how drastic the changes you made and forcing you to have to resign them  
Renamed recompiled system files  
Renamed the unsigned_ to signed_System_ since the system file changes the signature files are transferred since they are actually signed already instead of the misconception that has been going on for a while  
  
  
Version 1.0.8  
  
Separated the compiler into two options  
Updated APKTOOL.JAR to Apktool version 1.4.10  
  
  
Version 1.0.9  
  
Fixed the broken Option menu list  
Fixed the broken Compiler scripts for system Files  
Fixed the broken Compiler scripts for non system Files  
Added the ability to create Signed None System APK files with both the keep folder option and to bypass the keep folder  
Added the Option to create unsigned APK Files with out using the keep folder  
  
  
Version 1.0.10  
  
Rewritten how ADB is detected and used in the script  
Minor Changes to the SETUP.BAT Fixing MISC Issues  
Fixed ADB PUSH for SYSTEM Files as it was pointed at the wrong files  
Minor Tweaks to ZipAlign  
Updated apktool.jar to v1.5.0 (Released September 2 - 2012 ) Codename : Pikmin  
* Fix for colours being decompiled with improper hex colours  
* Fix for <string-array> being treated as array on occasion  
* Support for Mac OS X user:home, instead of dumping frames into /home  
* Updated internal framework.jar to API16  
* Added <user-sdk> reading to insert into apktool.yml to help with aapt building  
* Added --verbose mode to output contents of AAPT (note this is a HUGE output). Only used for debugging.  
* Ignore bootclasspath on debug mode. (Causes some classes in smali to be fail decompile)  
Updated AAPT to the latest Custom Build  
Fixed Decompiler Switch to Actually work  
Fixed Compiler script Errors  
Replaced The OLD MANUEL HTML File with a Actual Help Document  
Updated the README  
Added Raw Mode to the Decompiler Switch  
  
  
Version 1.0.11  
  
Moved DEPENDENCY FILES to its own bat file which fixed issue with installing a DEPENDENCY would close the setup.bat  
Updated to Apktool v1.5.2  
-Fixed (issue #299) - output smali file name errors to screen during rebuild instead of file stream  
-Only show the --aapt / -a info in verbose mode.  
-Fixed (issue #392) - Don't crash out if .git folder isn't present. Use SNAPSHOT-DEV instead.  
-Fixed (issue #67) - Only store compressed resources.arsc if original was compressed, otherwise STORE.  
-Moved build.gradle files to each sub-project, more organization :)  
-Fixed (issue #394) - Prevented duplicated files in final jar which saved around 1.2mb.  
-Added Proguard to drop final jar size from 6.2mb to 2.6mb.  
-Fixed (issue #395) - Added check for "aapt" in unit-tests.  
-Added ability to use "--frame-path" on [if|install-framework]  
-Fixed renaming of ".r.9.png" images -> ".9.png".  
-Added ability to use --version to print out Apktool version  
Fixed Compiler Issues Hopefully when recompiling  
Hopefully fixed a bug introduced into the application which would cause keep folder items not being copied over after removing changed files causing corrupted APK files  
Updated Custom Build of AAPT for MIUI SUPPORT  
UPDATE ANDROID SDK TOOLS to API 17  
Fixed Issue #10 Decompilation fails when resource processing begins  
Removed unneeded ping request  
Fixed Bug with Viewing the LOGS for the SETUP.BAT  
Added the ability to pull Dependencies directly from your phone to use to install using the setup scripts  
Fixed bug with Theme porter not functioning  
Cosmetic changes to the source.  
  
  
Version 2.0.0 (TBA)  
  
Fixed Compiler bug with option 3 and 4 for none system files.  
Fixed Set current project option not working properly  
Added the ability to set compression level of the Resources.arsc  
Changed the name of recompiled System Applications from unsigned to system to keep the two from being confused  
Code Clean up clearing out unused code  
UPDATED to APKTOOL v2.0.1 (unreleased)  
2015.xx.xx  
  
Fixed version qualifier like v4 from being ignored during decode. (Issue 928)  
Fixed windows helper script from appending current directory into $PATH. (Issue 927) / (Thanks Tercete)  
Fixed frameworks that were SharedLibraries from affecting the apktool.yml file. (Issue 936)  
Fixed apks that were crashing on internal attributes. (Issue 913)  
Fixed ResFileValue(s) being casted to ResScalarValues. (Issue 921)  
Fixed reading ResConfigFlags twice. (Issue 924)  
Correctly add libs and lib folders on [b]uild  
  
v2.0.0  
2015.04.21  
  
Migration Instructions from 1.5.x to 2.0.x  
Android 5.1 support  
Updated smali/baksmali to v2.0.5  
Updated gradle to v2.1  
Fixed using -c to retain original manifest and META-INF folder. (Issue 118)  
Fixed handling apks that have unknown files outside of standard aapt allowed resources. (Issue 174)  
Fixed aapt incorrectly setting pkgId. (Issue 313) / (Thanks M1cha)  
Added new usage output to organize features / parameters. (Issue 514)  
Fixed NPE from malformed 9patch images. (Issue 470) / (Thanks Felipe Richards)  
Fixed aapt requiring versionName and versionCode via parameter passing. (Issue 512)  
Fixed common aapt problems by including an internal mac, win and linux aapt. (Issue 551)  
Fixed decoding apks that had general access bit thrown. (Issue 550)  
Fixed debug mode (-d) to fix smali debugging. (Issue 450) / (Thanks Ryszard)  
Adapted smali debugging output to make breakpoint setting easier across IDEs. (Issue 228) / (Thanks Ryszard)  
Fixed characters (& & <) from being double escaped in <item>’s of arrays.xml. (Issue 502)  
Fixed “multiple substitution” errors with positional and exactly 1 non-positional argument. (Issue 371)  
Fixed ignoring --frame-path on [b]uild. (Issue 538)  
Fixed setting android:debuggable on debug apks. (Issue 507)  
Fixed common “superclass” errors on debug mode. (Issue 451)  
Fixed pkgId not being set in framework files. (Issue 569)  
Added -m / --match-original feature to allow apks to match original. (Issue 580)  
Fixed apks PNGs gaining brightness on rebuild. (Issue 437)  
Added dexlib2 (smali2) into Apktool. (Issue 559)  
Fixed windows builds caused by java.nio. (Issue 606)  
Fixed error output being written to stdout instead of stderr. (Issue 620)  
Fixed issue with smali filenames from being too long. (Issue 537) / (Thanks JesusFreke)  
Fixed issue with INSTALL_FAILED_DEXOPT. (Issue 634) / (Thanks JesusFreke)  
Fixed issue with apks with multiple packages. (Issue 583)  
Fixed issue with decoding .jar files. (Issue 641)  
Fixed issue with improperly labeling type of <array>’s. (Issue 660)  
Fixed issue with truncated strings. (Issue 681) / (Thanks jtmuhone)  
Fixed issue with apks with multiple empty types via ignoring them. (Issue 688)  
Fixed issue with apks with one package named android from decoding. (Issue 699)  
Fixed StringBlock by making it thread safe. (Issue 711) / (Thanks aluedeke)  
Fixed truncated UTF-16 strings. (Issue 349)  
Spacing cleanup of 2014. (Issue 694)  
Fixed style crash due to malformed styles. (Issue 307)  
Fixed issue with unknown files being ignored that start with an accepted file name. (Issue 713)  
Fixed issue with unknown files being ignored when -r was used. (Issue 716)  
Fixed issue with renamed manifests such as (android, com.htc and miui). (Issue 719)  
Fixed path issues with UTF8 chars and unknown files. (Issue 736)  
Fixed issue with renamed manifest (com.lge). (Issue 740)  
Fixed incorrect typing of <array> items due to incorrect loop index. (Issue 520)  
Fixed issue with AndroidManifest.xml missing attributes. (Issue 623)  
Fixed issue with ignoring formatted="false" attribute in <string-array>’s. (Issue 786)  
Fixed issue with multiple overlapping try catches. (Issue 748)  
Fixed issue with apks with multiple ResPackages where default is not pkgId 0. (Issue 793)  
Fixed issue with renamed manifest (yi). (Issue 791)  
Fixed issue with apks with large StringPools failing to decode. (Issue 773)  
Fixed issue with bad casting of ResStringValue to ResAttr. (Issue 587) / (Thanks whydoubt)  
Fixed issue with hardcoding 9 patches as .png when there are .qmg, .spi. (Issue 798)  
Added support for Android 5.0 (Lollipop). (Issue 763)  
Added support for TYPE_DYNAMIC_REFERENCE. (Issue 815)  
Fixed issue with implicitly added version qualifiers. (Issue 823)  
Added support for shared library apks. (Issue 822)  
Fixed issue improperly casting strings that resembled filepaths to ResFileValues. (Issue 440)  
Fixed issue with segfaulting aapt. (Issue 700)  
Fixed issue with undefined attributes. (Issue 655)  
Fixed issue with improper handling of MNC_ZERO which caused duplicated resources. (Issue 811)  
Fixed warnings of “Cleaning up unclosed ZipFile…”. (Issue 853)  
Added support for downloading gradle binaries over https. (Issue 866)  
Fixed issue when user has no access to $HOME. (Issue 513)  
Added support for BCP-47 localization tags. (Issue 870)  
Fixed issue with double escaping of ampersands in <. (Issue 658) / (Thanks jhornber)  
Fixed issue with not respecting compression type of unknown files. (Issue 878) / (Thanks simtel12)  
Fixed issue with apktool branding apks via platformBuildVersion[Code/Name]. (Issue 890)  
Fixed issue when multiple dex files were ignored using -s. (Issue 904)  
Fixed issue with @string references in <provider> attributes from preventing apk install. (Issue 636)  
Fixed issue with decoding .spi files as 9 patch images. (Thanks Furniel)  
Fixed issue with APKs with multiple dex files.  
Fixed issue using Apktool without smali/baksmali.  
Fixed issue using non URI standard characters in apk name. (Thanks rover12421)  
Added version output during decode/build operations to quickly identify apktool version.  
Fixed NPE error when using .odex files with --no-src specified. (Thanks Rodrigo Chiossi)  
Fixed locale problems when locale changes meaning of windows .bat script. (Thanks Adem666)  
Fixed issue when -r was used with no /res folder present. (Thanks chrisch1974)  
Added smali/baksmali for adding new up coming  Deodex features  
Added now when compiling with option 12 when you choose option 3 and 4 it names the APK files to show they have the original signature keys  
Added new Signing method for signing APK files. With this new method the key used has a shelf life of 1000 years and also APKS files signed with this key is able to be published on the android market  
Added new checks to cleaning up old recompiled APK files before recompiling again.  
Added pause breaks into option 12 so that users can check to see if anything went wrong in the recompiling method when using the keep folder option.  
Updated option 13 to use a alternative to a signing method which uses the Java_Home Environment Variable which needs to point to for example mine is set to C:\Program Files\Java\jdk1.6.0_41  
Added Batch Decompile option  
Added Batch Compile option  
Completely rewrote how recompiled APK files are stored so to not clutter up the place-APK-here-for-modding as that folder is just for storing unmodified APK files.  
Updated the signer location to match up with the changes to how modified APK files are handled  
Added support to Xperia devices given the ability to install the dependencies   
Added SemcGenericUxpRes pull support  
Fixed the issue with changes not happening when compiling the scripts using the wrong resources.arsc  
Fixed broken ZipAlign scripts  
Added the options to allow you to choose  to use the original AndroidManifest.xml when not using the keep folder options when compiling APK files.  
Added the options to allow you to choose  to use the original AndroidManifest.xml when not using the keep folder options when compiling system APK files.  
Added the ability to open the project after decompiling the APK files  
Added support for Jar files  
NEW Splash Screen  
Rewritten the system pull scripts to make dynamic installation of the dependencies more robust.  
Added support for pulling the needed files to install the dependcies for the Xnote.  
Added Support for pulling the needed files to install the dependcies for all mediatek chipset Devices.  
Added Support for pulling the system/framework/framework-miui.apk file to install for All MIUI ROMs that may require it.  
Minor changes to the UI in the setup.bat to make room for  more in the future releases.  
Updated README  
ADDED Other Manuel options by added two other help document types in case there is a compatibility issue with any of them  
Updated the keep folder options of all the compilers which use the keep folder  
FIXED OPTION 20   Sign an apk(Batch support)(inside place-apk-here-for-signing folder only)  
