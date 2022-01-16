echo off
:menu
cls
title Total Annihilation Boot Menu
echo ============================================
echo =             Total Annihilation           =
echo ==================Boot Menu=================
echo =  1. Start Total Annihilation             =
echo =  2. TA Editors                           =
echo =  3. Documents and Cheat Codes            =
echo =  4. TA Directory Managment               =
echo =  5. TA Web                               =
echo =  6. TA Mods                              =
echo =  h. Help                                 =
echo =  c. Credits                              =
echo =  r. Restart TA Boot Menu                 =
echo ============================================
echo =  Date: %date% Time: %time%  =
echo =============Press 'Q' to Quit==============
set input=
set /p input=
if "%input%"==" " goto :menu
if /I '%input%'=='1' goto selection1
if /I '%input%'=='1ns' goto selection1ns
if /I '%input%'=='2' goto selection2
if /I '%input%'=='3' goto selection3
if /I '%input%'=='4' goto selection4
if /I '%input%'=='5' goto selection5
if /I '%input%'=='6' goto selection6
if /I '%input%'=='7' goto selection7
if /I '%input%'=='h' goto help
if /I '%input%'=='c' goto credits
if /I '%input%'=='r' start cmd %systemdrive%\CAVEDOG\TOTALA\"TA Boot Menu 1e.bat" /b /SEPERATE /ABOVENORMAL 
if /I '%input%'=='q' goto quit
goto :menu

:selection1
start %systemdrive%\CAVEDOG\TOTALA\"totalA.exe" /ABOVENORMAL /WAIT
::set startruntime=%time% && (start %systemdrive%\CAVEDOG\TOTALA\"totalA.exe" /ABOVENORMAL /wait && set endruntime=%time% && set gametime=(%endruntime%-%startruntime%) && echo Runtime: %gametime%
goto :menu 
:: tasklist /fi imagename totala.exe /fi cputime /fo list


:selection1ns
start %systemdrive%\CAVEDOG\TOTALA\"totalA.exe" /SEPERATE /ABOVENORMAL /NODE /WAIT
goto :menu

:selection2
:editors
cls
title Total Annihilation Editors
echo ============================================
echo =            Total Annihilation            =
echo ===================Editors==================
echo =  1. Start TAE Map Editor                 =
echo =  2. Start Anninilator Map Editor         =
echo =  3. Start TA unit Editor                 =
echo =  4. Start Said AI Editor                 =
echo ============================================
echo =  Date: %date% Time: %time%  =
echo ============Press 'Q' to go Back============
set input=
set /p input=
if "%input%"==" " goto :editors
if /I '%input%'=='1' start %systemdrive%\CAVEDOG\TOTALA\TAE.exe else echo TAE not installed in the CAVEDOG\TOTALA Directory.
if /I '%input%'=='2' start %systemdrive%\CAVEDOG\TOTALA\Annihilator.exe else echo Annihilator not installed in the CAVEDOG\TOTALA Directory.
if /I '%input%'=='3' start %systemdrive%\CAVEDOG\TOTALA\"TA unit editor"\"TA unit editor.exe" /NODE /ABOVENORMAL else echo Unit Editor not installed in the CAVEDOG\TOTALA Directory.
if /I '%input%'=='4' if exist %systemdrive%\CAVEDOG\TOTALA\said2.exe start %systemdrive%\CAVEDOG\TOTALA\said2.exe /NODE /ABOVENORMAL else echo SAID2 not installed in the CAVEDOG\TOTALA Directory.
if /I '%input%'=='q' goto menu
goto :editors

:selection3
:tadcc
cls
title Total Annihilation Documents
echo ============================================
echo =       Total Annihilation Documents       =
echo ============================================
echo =  1. Total Annihilation Manual            =
echo =  2. TA Core Contingency readme           =
echo =  3. TA Battle Tactics readme             =
echo =  4. TA 3.1 Patch readme                  =
echo =  5. TA 3.9.01 Patch readme               =
echo =  6. TA Cheat Codes                       =
echo =  7. TAE readme                           =
echo =  8. TA Unit Editor readme                =
echo =  9. TA AI Editor readme                  =
echo = 10. Stratiges Guide                      =         
echo ============================================
echo =  Date: %date% Time: %time%  =
echo ============Press 'Q' to go Back============

set input=
set /p input=
if "%input%"==" " goto :tadcc
if /I '%input%'=='1' if exist %systemdrive%\CAVEDOG\TOTALA\docs\"TA manual.pdf" start %systemdrive%\CAVEDOG\TOTALA\docs\"TA manual.pdf " else goto :tadccerror
if /I '%input%'=='2' if exist %systemdrive%\CAVEDOG\TOTALA\docs\"TA core contingency readme.txt" call %systemdrive%\CAVEDOG\TOTALA\docs\"TA core contingency readme.txt" else goto :tadccerror
if /I '%input%'=='3' if exist %systemdrive%\CAVEDOG\TOTALA\docs\"TA battle tactics readme.txt" call %systemdrive%\CAVEDOG\TOTALA\docs\"TA battle tactics readme.txt" else goto :tadccerror
if /I '%input%'=='4' if exist %systemdrive%\CAVEDOG\TOTALA\docs\"TA 31 patch readme.txt" call %systemdrive%\CAVEDOG\TOTALA\docs\"TA 31 patch readme.txt" else goto :tadccerror
if /I '%input%'=='5' if exist %systemdrive%\CAVEDOG\TOTALA\docs\"TA 391 patch readme.txt" call %systemdrive%\CAVEDOG\TOTALA\docs\"TA 391 patch readme.txt" else goto :tadccerror
if /I '%input%'=='6' if exist %systemdrive%\CAVEDOG\TOTALA\docs\"TA cheats.txt" call %systemdrive%\CAVEDOG\TOTALA\docs\"TA cheats.txt" else goto :tadccerror
if /I '%input%'=='7' if exist %systemdrive%\CAVEDOG\TOTALA\docs\"TAE readme.txt" call %systemdrive%\CAVEDOG\TOTALA\docs\"TAE readme.txt" else goto :tadccerror
if /I '%input%'=='8' if exist %systemdrive%\CAVEDOG\TOTALA\docs\"TA unit editor readme.txt" call %systemdrive%\CAVEDOG\TOTALA\docs\"TA unit editor readme.txt" else goto :tadccerror
if /I '%input%'=='9' echo SAID2 here && goto :tadcc
if /I '%input%'=='10' echo Stratiges Guide here && goto :tadcc
if /I '%input%'=='q' goto menu
goto :tadcc
:tadccerror
echo file does not exist, get a new one!
pause
goto :tadcc

:selection4
:dm
cls
title Total Annihilation Directory Managment
echo ============================================
echo =            Total Annihilation            =
echo =============Directory Managment============
echo =  1. Open TOTALA Directory                =
echo =  2. Open TA Bacukup Directory            =
echo =  3. Backup TA                            =
echo =  4. Restore TA from Backup               =
echo =  5. TA Directory Cleanup                 =
echo =  6. Delete Savegames                     =
echo ============================================
echo =  Date: %date% Time: %time%  =
echo ============Press 'Q' to go Back============
set input=
set /p input=
if "%input%"==" " goto :dm
if /I '%input%'=='1' start %systemdrive%\CAVEDOG\TOTALA
if /I '%input%'=='2' goto dm2
if /I '%input%'=='3' goto dm3
if /I '%input%'=='4' goto dm4
if /I '%input%'=='5' goto dm5
if /I '%input%'=='6' if exist %systemdrive%\CAVEDOG\TOTALA\savegame rd /s /q %systemdrive%\CAVEDOG\TOTALA\savegame && echo savegames deleted! && pause
if /I '%input%'=='q' goto menu
pause
goto :dm

:dm2
start %systemdrive%\CAVEDOG\"Total Annihilation Backup"\TOTALA
pause
goto :dm

:dm3
::back up
if exist %systemdrive%\CAVEDOG\"Total Annihilation Backup" rd /s /q %systemdrive%\CAVEDOG\"Total Annihilation Backup"
if not exist %systemdrive%\CAVEDOG\"Total Annihilation Backup" md %systemdrive%\CAVEDOG\"Total Annihilation Backup" && echo Please Wait... 
DIR %systemdrive%\CAVEDOG\TOTALA /B /C /Q /S > %systemdrive%\CAVEDOG\"Total Annihilation Backup"\TABackupFileList.txt
xcopy /e /i /q /-y %systemdrive%\CAVEDOG\TOTALA %systemdrive%\CAVEDOG\"Total Annihilation Backup"\TOTALA && ( echo the Total Annihilation backup has been created. && pause && goto :dm )
goto :dm

:dm4
::restore
if not exist %systemdrive%\CAVEDOG\"Total Annihilation backup"\TOTALA echo Make a TA Backup first! && pause && goto :dm
if exist %systemdrive%\CAVEDOG\TOTALA rd /s /q %systemdrive%\CAVEDOG\TOTALA && echo Please Wait... 
xcopy /e /i /q /-y %systemdrive%\CAVEDOG\"Total Annihilation backup"\TOTALA %systemdrive%\CAVEDOG\TOTALA && echo Total Annihilation sucsessfully restored from backup! && pause && goto :dm
goto :dm

:dm5
::cleanup
:: txt
if exist %systemdrive%\CAVEDOG\TOTALA\taccread.txt del %systemdrive%\CAVEDOG\TOTALA\taccread.txt
if exist %systemdrive%\CAVEDOG\TOTALA\readme31.txt del %systemdrive%\CAVEDOG\TOTALA\readme31.txt
if exist %systemdrive%\CAVEDOG\TOTALA\readme.txt del %systemdrive%\CAVEDOG\TOTALA\readme.txt
if exist %systemdrive%\CAVEDOG\TOTALA\BTreadme.txt del %systemdrive%\CAVEDOG\TOTALA\BTreadme.txt
if exist %systemdrive%\CAVEDOG\TOTALA\errorlog.txt del %systemdrive%\CAVEDOG\TOTALA\errorlog.txt rem TA Error Log
if exist %systemdrive%\CAVEDOG\TOTALA\TAEREAD.txt del %systemdrive%\CAVEDOG\TOTALA\TAEREAD.txt
:: doc
if exist %systemdrive%\CAVEDOG\TOTALA\taccread.doc del %systemdrive%\CAVEDOG\TOTALA\taccread.doc
if exist %systemdrive%\CAVEDOG\TOTALA\readme.doc del %systemdrive%\CAVEDOG\TOTALA\readme.doc
if exist %systemdrive%\CAVEDOG\TOTALA\btreadme.doc del %systemdrive%\CAVEDOG\TOTALA\btreadme.doc
if exist %systemdrive%\CAVEDOG\TOTALA\TAEREAD.doc del %systemdrive%\CAVEDOG\TOTALA\TAEREAD.doc
:: ini
if exist %systemdrive%\CAVEDOG\TOTALA\setup.ini del %systemdrive%\CAVEDOG\TOTALA\setup.ini rem TA information file replaced with TA.ini
:: exe
if exist %systemdrive%\CAVEDOG\TOTALA\tabtunst.exe del %systemdrive%\CAVEDOG\TOTALA\tabtunst.exe rem BT uninstaller
if exist %systemdrive%\CAVEDOG\TOTALA\setup.exe del %systemdrive%\CAVEDOG\TOTALA\setup.exe rem TA Setup
::trash folders
if exist %systemdrive%\CAVEDOG\TOTALA\log rd /s /q %systemdrive%\CAVEDOG\TOTALA\log rem DemoRecorder Logs
if exist %systemdrive%\CAVEDOG\TOTALA\backup rd /s /q %systemdrive%\CAVEDOG\TOTALA\backup rem CC Install Backup
if exist %systemdrive%\CAVEDOG\TOTALA\bt rd /s /q %systemdrive%\CAVEDOG\TOTALA\bt rem unneeded BT files
if exist %systemdrive%\CAVEDOG\TOTALA\cc rd /s /q %systemdrive%\CAVEDOG\TOTALA\cc rem unneeded CC files
if exist %systemdrive%\CAVEDOG\TOTALA\btbackup rd /s /q %systemdrive%\CAVEDOG\TOTALA\btbackup rem bt Install Backup
if exist %systemdrive%\CAVEDOG\TOTALA\%userName% rd /s /q %systemdrive%\CAVEDOG\TOTALA\%userName% rem remove demorecorder screenshot folder labbled users name.
echo TA dir cleanup complete! && pause
goto :dm

:selection5
:taw
cls
title Total Annihilation Web
echo ============================================
echo =            Total Annihilation            =
echo =====================Web====================
echo =  1. Cavedog                              =
echo =  2. TA Universe                          =
echo =  3. Unit Universe                        =
echo =  4. File Planet                          =
echo =  5. TA Boot Menu Source Code             =
echo =  6. Buy Total Annihilation               =
echo =  7. Get Patches                          =
echo =  8. TA Fourms                            =
echo =  9. Play Online                          =
echo ============================================
echo =  Date: %date% Time: %time%  =
echo ============Press 'Q' to go Back============
set input=
set /p input=
if "%input%"==" " goto :taw
if /I '%input%'=='1' goto taw1
if /I '%input%'=='2' goto taw2
if /I '%input%'=='3' goto taw3
if /I '%input%'=='4' goto taw4
if /I '%input%'=='5' goto taw5
if /I '%input%'=='6' goto taw6
if /I '%input%'=='7' goto taw7
if /I '%input%'=='8' goto taw8
if /I '%input%'=='q' goto menu
goto :taw

:mods
cls
title Total Annihilation Mods
echo ============================================
echo =             Total Annihilation           =
echo ==================TA Mods===================
echo =  1. TA:Reclimation                       =
echo =  2. TA Escalation                        =
echo =  3. x                                    =
echo =  4. TA Zero                              =
echo =  5. TA 3D                                =
echo ============================================
echo =  Date: %date% Time: %time%  =
echo ============Press 'Q' to go Back============
set input=
set /p input=
if "%input%"==" " goto :mods
if /I '%input%'=='1' goto mods1
if /I '%input%'=='2' goto mods2
if /I '%input%'=='3' goto mods3
if /I '%input%'=='4' goto mods4
if /I '%input%'=='5' goto mods5
if /I '%input%'=='6' goto mods6
if /I '%input%'=='q' goto quit
goto :mods

:mods1
pause>nul
:: TA:Reclimation
goto :mods

:mods2
pause>nul
:: TA Escalation  
goto :mods

:mods3
pause>nul
:: TA Zero
goto :mods

:mods4
pause>nul
:: TA 3D 
goto :mods

:quit
cls
echo ============================================
echo =     Thank You for using TA Boot Menu     =
echo ============================================
pause>nul
exit

:credits
cls
echo Hi, My name is Christopher aka Jedi and I'm writing TA Boot Menu to contribute to all the
echo great work that the Total Annihilation community has done in keeping this amazing game alive.
echo I, like everyone else in the modding community can use all the support I can get, please donate!
pause>nul
echo.
echo TA Boot Menu is intended to fill in gaps in the modding process by automating many of the
echo common time consuming tasks such as backing up and restoring the totala Directory and
echo putting websites and fan made content a few button presses away.
pause>nul
echo.
echo Any contribution is a good contribution, if you have suggestions or errors to report
echo please feel free to send me an email @ jedininja38@gmail.com and I will respond as
echo soon as I am able.
pause>nul
echo.
echo TA Boot Menu is completly rolyty free and you can do as you please with it!
echo all I ask for is a credit in the code and a link to my someday website!. "Jedi"
pause>nul
cls
echo ============================================
echo =             Total Annihilation           =
echo ==================Boot Menu=================
pause>nul
goto :menu

:help
cls
title Total Annihilation Help
echo ============================================
echo =            Total Annihilation            =
echo ====================Help====================
echo =  1. About TA Boot Menu                   =
echo =  2. Patches                              =
echo =  3. Backup                               =
echo =  4. Restore                              =
echo =  5. Cleanup                              =
echo =  6. Diagnostics                          =
echo =  7. Web                                  =
echo ============================================
echo =  Date: %date% Time: %time%  =
echo ============Press 'Q' to go Back============
set input=
set /p input=
if "%input%"==" " goto :help
if /I '%input%'=='1' goto help1
if /I '%input%'=='2' goto help2
if /I '%input%'=='3' goto help3
if /I '%input%'=='4' goto help4
if /I '%input%'=='5' goto help5
if /I '%input%'=='6' goto help6
if /I '%input%'=='7' goto help7
if /I '%input%'=='q' goto menu
goto :help

:help1
echo.
echo The Total Annihilation Boot Menu is a support 
echo script writtin in Windows Batch and is intended
echo to aid in the Total Annihilation modding process, 
echo which at times can be tedius and repetitive. 
echo.
echo TA Boot Menu can clean up known unneeded files, 
echo Create Backups, Replace Corrupted Files download 
echo new content and direct you toward a slew of old 
echo and new TA Content around the world wide web. 
echo.
echo TA Boot Menu is best off when placed into the
echo  "CAVEGOG" Directory, but can run from any 
echo loccation including USB's, external drives or 
echo phones running as mass storage devices. 
echo.
echo Due to the usage of Windows Batch Script the 
echo opperational effiecent of TA Boot Menu is subject
echo  to your local network administrations User Polices 
echo reguarding Windows Command Line, Batch Files and 
echo CMD command usage.
echo.
echo TA Boot Menu will only work with computers running
echo Microsoft Windows and does not support Linux or MacOS. 
echo.
echo If you Discover an error, or have a need for new
echo fuctions/content or wish to post your TA website on 
echo TA Boot Menu feel free to email me at:
echo.
echo Jedi @ "jedininja38@gmail.com"
echo Thank you for downloading TA Boot Menu.
echo. 
pause
goto :help

REM ::put into "web" -->
REM echo There is much to discover in Total Annihilation from Fanmade Patches, Utilities
REM echo and Ai's to Homebrew expansion packs and fullgame Mods. With some help managing 
REM echo files and acsessing content from around the internet the game playing experience 
REM echo can be off the self new every time you play! 
REM echo.
REM echo The TA Modding community is supportive and full of Cavedog Great content. There is 
REM echo enough Maps, Units, Ai's, Art and support for this amazing game to keep it alive
REM echo long after the war for imortality has rusted and withered away! 
REM echo.
REM pause>nul
REM echo ~~ KEEP TA ALIVE AND MAKE SOME CONTENT! ~~

:help2
::patches
pause>nul

goto :help

:help3
::backup
echo.
echo The Backup option of the Help menu will make an exact copy 
echo of the "TOTALA" folder in the CAVEDOG Directory called 
echo "Total Annihilation Bacukup". The backup folder is used to 
echo "Restore" the TOTALA directory and run file property compairisons. 
echo.
pause>nul
goto :help

:help4
::restore
echo.
echo The Restore option of the Help menu will completely delete the
echo "TOTALA" folder in the CAVEDOG Directory and then make a new 
echo copy from the "Total Annihilation Bacukup" folder if it is 
echo detected.
echo.
echo The deleted "TOTALA" folder will remain in the windows recycle bin
echo should anything go wrong or in case of accidential file deletion. 
echo.
pause>nul
goto :help

:help5
::cleanup
echo.
echo The Cleanup option of the help menu will remove known files that
echo accumulate when modding Totala Annihilation or when nocd mods are 
echo used that take up precious hard drive space. 
echo.
echo The file list is listed in the code of TA Boot Menu on lines 200 - 220. 
echo To read it right click the TA boot Menu icon and go to "Edit".
echo.
echo Common files that are deleted include; readmes, error logs,seup/uninstall files
echo and log files from DemoRecorder if you are running patches 3.91 or 3.92.
echo Most of the relevent Readme files come with TA Boot Menu and can be found
echo in the documents folder in the Totala Directory.
echo.
pause>nul
goto :help

:help6
goto :help

:blank
pause>nul

goto :help

::Future featuress
::	oTA file Replacer
::		Copy Tactics, Totala1,2,3 and dll's from disks
::	oTA Update Maker 
::		install TA cd's + patchs + fixes in order
::		TA + CC + bt + 3.1 + 3.9 + webunits + webmaps + nocd ini	
::	File Scanner
::		List TOTALA Files and compair names/sizes to prelisted file orgins oc cd's, patches and updates (will be mostly oTA and UU

Notes:
Special Score Board Feature
-oTA Score is Kills x 50
-Special Score Board will greatly reflect a players effiecity and tactics in the score.

Special Score Board Equasion:
((energy produced / excess enegery) + (metal produced / excess metal)) / ((players * difficulty) + (Kills / losses))
((/)+(/))/((10*3)+(/))=
test stats skirmish 1 
Player   :
Computer1: K182 L15 EP3259231 MP107835 EE243071 EM 1       SSB:((3259231/243071)+(107835/1))/((10*3)+(182/15))=42.13
Computer1: K182 L15 EP3259231 MP107835 EE243071 EM 1       SSB:((3259231-243071)+(107835-1))/((10+3)+(182/15))=25.13
Computer1: K182 L15 EP3259231 MP107835 EE243071 EM 1       SSB:((3259231-243071)+(107835-1))/(182/15)=12.13
Computer1: K182 L15 EP3259231 MP107835 EE243071 EM 1       SSB:((3259231-243071)+(107835-1))*(182/15)=12.13
Computer1: K182 L15 EP3259231 MP107835 EE243071 EM 1       SSB:((3259231-243071)+(107835-1))*((10+3)*(182/15))=157.73

Computer2: K9 L29 EP333041 MP16494 EE168 EM7               SSB:((333041/168)+(16494/7))/((10*3)+(9/29))=30.31
Computer3: K16 L54 EP415189 MP20607 EE216 EM8              SSB:((415189/216)+(20607/8))/((10*3)+(16/54))=30.29
Computer4: K4 L28 EP523675 MP25998 EE216 EM9               SSB:((523675/216)+(25998/9))/((10*3)+(4/28))=30.14
Computer5: K268 L434 EP4134947 MP135493 EE2866500 EM4      SSB:((4134947/2866500)+(135493/4))/((10*3)+(268/434))=30.61
Computer6: K156 L423 EP3720976 MP117823 EE2027362 EM5      SSB:((3720976/2027362)+(117823/5))/((10*3)+(156/432))=30.36
Computer7: K180 L164 EP2713282 MP133380 EE1389749 EM72690  SSB:((2713282/1389749)+(133380/72690))/((10*3)+(180/164))=31.09
Computer8: K0 L10 EP324864 MP16745 EE216 EM9               SSB:((324864/216)+(16745/9))/((10*3)+(0/10))=30
Computer9: K0 L3 EP260165 MP13418 EE250 EM10               SSB:((260165/250)+(13418/10))/((10*3)+(0/3))=30
Computer9: K0 L3 EP260165 MP13418 EE250 EM10               SSB:((260165-250)+(13418-10))/((10+3)+(0/3))=13
Computer9: K0 L3 EP260165 MP13418 EE250 EM10               SSB:((260165-250)+(13418-10))*((10+3)+(0/3))=13
Computer9: K0 L3 EP260165 MP13418 EE250 EM10               SSB:((260165-250)+(13418-10))*((10+3)+(0-3))=10
Computer9: K0 L3 EP260165 MP13418 EE250 EM10               SSB:(((260165-250)+(13418-10))/((10+3)+(0-3)))=27332.3
how to acomplish gamestats menu:
-demorecorder makes a folder for screen shots labbled "Users name"
-taking a screen shot at the end game score screen will get the 
-data need to do the math for Special Score Board. unless there is 
-a call to extract the data from the end game score screen.
