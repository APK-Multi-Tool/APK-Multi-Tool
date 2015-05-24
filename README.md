APK Multi-Tool

I have updated all the files and modified Apk manager's Scripts to fix many user reported bugs from Daneshm90 apk manager which he had written a simple script to ease the process of editing apks. Got a lot of downloads so thought its in demand

After some thought and after adding new features and decided that since it is no longer just a apk management tool that is is now a multifunctional tool now so I felt to change the name to APK Multi-Tool.

Whether you're doing basic image editing or editing the smali or XML files, on average u have to use (Brut.all or JF's smali/baksmali) awesome tool to extract the apk, edit it, then sign the apk and then adb push/install it. This process is quite tiresome if you are testing a method that needs fine tweaking.

This script should make the process a LOT smoother.
There is an option of compiling/signing/installing all in one step

Thanks:
Goes to Daneshm90 the Original Writer of Apk Manager
Goes to Brut.all for his awesome tool.
Goes to JF for of course, smali/baksmali
Goes to farmatito for porting this script to Linux

Features:
- Extract, Zip apk's.
- Optimize pngs (ignores .9.pngs)
- Zipalign apks
- Sign apks
- Push to specific location on phone
- Incorporates brut.all's apktool
- Pull apk from phone into modding environment.
- Batch optimize apk (Zipalign,optipng,or both)
- Quick sign an apk (Batch mode supported)
- Batch Ogg optimization
- Compression level selector (monitor status above menu)
- Batch install apk from script (option 16)
- Logging on/off has been removed. Instead a log.txt is created which logs the activities of the script organized using time/date headers
- User can change the max java heap size (only use if certain large apks get stuck when decompiling/compiling apks) (Option 19)
- Improved syntax of questions/answers
- Error detection. Checks if error occurred anytime u perform a task, and reports it
- Read log (Option 20)
- U can now set this script as your default application for apks. When u do, if u double click any apk it will install it for u.
- Supports batch installation, so if u drag multiple apks into the script (not while its running) it will install them all for u. U can of course drag a single apk as well
- Added framework dependent decompiling (For non proprietary rom apks). (Option 10). Checks whether the depended apk u selected is correct.
- Allows multiple projects to be modified, switch to and from.
- Allows to modify system apk's using apktool but ensures maximum compatibility in terms of signature / manifest.xml
- Stuff i forgot i guess

Instructions:
- Place apk in appropriate folder (Any file name will work, if running for first time folders will not be there, you must run and then the folders will be created)
- Run script
- Minimize the script
- Edit files inside the project folder
- Maximize the script

Decompile Mode
Switch decompile mode (Allows you to pick to fully decompile the APK's or JAR's or to just decompile Sources or just the Resources or do a raw dump allowing you to just edit the normal images 

Themers Convertion Tools:
Before running the themers tool-set make sure when you run the scripts 15 16 17 in this exact order as it is setup as a tool-chain. 

To transfer or convert a rom theme pack place the apk files of the theme pack you wish to convert over to your rom in the the Themedapk folder and place the rom files of the same name from the rom you have flashed on your phone in the transferred folder run the scripts
take note that depending on your computer specs it can take over a hour to complete

MINIMUM REQUIREMENTS:
----------------
Required:
- Windows 95/98/VISTA/7/8/8.1
- Java 1.7.x
- Keyboard & mouse

Recominded:
- Java 1.8.x

INSTALLATION
----------------

Treat your computer to a tune up - follow this procedure before installation:

In Accessories\System Tools, you may find utilities that can increase the 
performance of your system.

- Scandisk your hard drive with "ScanDisk"
- Defragment your hard drive with "Disk Defragmenter"
- Virus Check your Hard Drive with the latest virus definitions
- Reclaim hard drive space by deleting unnecessary files with "Disk Cleanup"
- Verify that you have at least 150MB of free hard drive space for your swap file.

To install the tool in the ROOT of you HARDDRIVE is RECOMINDED but not REQUIRED
FOR EXAMPLE
C:\APK-Multi-Tools\

You cannot have any spaces in the path IE your installation directory should not be
FOR EXAMPLE
C:\APK Multi-Tool\

You will Need to have the JAVA JDK INSTALLED and you need to set your Java_Home Environment Variable which needs to point to.
FOR EXAMPLE
C:\Program Files\Java\jdk1.7.0_25

To Create the Environment Variable you need to go into System Properties click on the ADVANCED tab select ENVIRONMENT VARIABLE you will see a two boxes you want create the Java_Home in the System Variables by clicking NEW in the Variable Name box NAME IT JAVA_HOME in the Variable Value box place the location of the insallation of the JAVA JDK
FOR EXAMPLE
"C:\Program Files\Java\jdk1.7.0_25"

When setting the ENVIRONMENT VARIABLE there can be spaces in the path but you will have to place the path in "" like I did in the example above

FAQs:
- 1. IF Modifying system apps, never resign them unless you want to resign all
- apk's that share its shared:uid
- 2. IF decompiling/recompiling system apps and IF AndroidManifest.xml was not
- preserved from the original apk, then either push the apk when in recovery or
- by doing :
- adb remount
- adb shell stop
- adb push something.apk /wherever/something.apk
- adb shell start
- 3. Decompiling a themed apk is not possible, you must get the original unthemed
- apk, then decompile, make your theme/xml changes and recompile
- 4. IF you're stuck and the log doesnot give you any indication as to what you 
- are doing wrong, then post in the thread http://forum.xda-developers.com/showthread.php?t=1310151
- Make sure u include ur APK-Multi-Tool.log, and IF its not a editing problem i.e 
- its something regarding when u push it to your phone, then post ur adb log 
- as well. To do so 
- follow these steps :
- 1. Connect ur phone to ur pc
- 2. Push/install the app on your phone
- 3. Select "Create Log" option on this menu
- 4. Let the new window run for 10 seconds, then close it
- Once done, you will find a adblog.txt in the root folder
- Upload that as well.

What is the Batch Theme Image Transfer TOOL?
This tool makes the process of transferring images from one APK to another APK File of the same file making it easier to update themes or even transferring a theme update.zip of one ROM to another Rom allowing the porting of theme to be much faster.
(Note: You will have to manually replace the progress_horizontal.xml from the framework-res since this file is needed with Theme Changes)