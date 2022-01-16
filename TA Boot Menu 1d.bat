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
echo =  4. TA Directory managment               =
echo =  5. TA Web                               =
echo =  6. TA Mods                              =
echo =  h. Help                                 =
echo =  c. Credits                              =
echo =  r. Restart TA Boot Menu                 =
echo =============Press 'Q' to Quit==============
set input=
set /p input=
if "%input%"==" " goto :menu
if /I '%input%'=='1' goto selection1
if /I '%input%'=='2' goto selection2
if /I '%input%'=='3' goto selection3
if /I '%input%'=='4' goto selection4
if /I '%input%'=='5' goto selection5
if /I '%input%'=='6' goto selection6
if /I '%input%'=='7' goto selection7
if /I '%input%'=='h' goto help
if /I '%input%'=='c' goto credits
if /I '%input%'=='r' goto rs
if /I '%input%'=='q' goto quit
pause > nul
goto :menu

:selection1
start %systemdrive%\CAVEDOG\TOTALA\"totalA.exe"
goto :menu

:selection2
:editors
cls
title Total Annihilation Editors
echo =============================================
echo =            Total Annihilation             =
echo ===================Editors===================
echo =  1. Start TAE Map Editor                  =
echo =  2. Start TA unit Editor                  =
echo =  3. Start Said AI Editor                  =
echo ============Press 'Q' to go Back=============
set input=
set /p input=
if "%input%"==" " goto :editors
if /I '%input%'=='1' goto editors1
if /I '%input%'=='2' goto editors2
if /I '%input%'=='3' goto editors3
if /I '%input%'=='q' goto menu
pause > nul
goto :editors

:editors1
start %systemdrive%\CAVEDOG\TOTALA\TAE.exe
goto :editors

:editors2
start %systemdrive%\CAVEDOG\TOTALA\"TA unit editor"\"TA unit editor.exe"
goto :editors

:editors3
start %systemdrive%\CAVEDOG\TOTALA\said2.exe
goto :editors

:selection3
:tadcc
cls
title Total Annihilation Documents
echo =============================================
echo =       Total Annihilation Documents        =
echo =============================================
echo =  1. Total Annihilation Manual             =
echo =  2. TA Core Contingency readme            =
echo =  3. TA battle tactics readme              =
echo =  4. TA 3.1 Patch readme                   =
echo =  5. TA 3.9.01 Patch readme                =
echo =  6. TA Cheat Codes                        =
echo =  7. TAE readme                            =
echo =  8. TA Unit Editor readme                 =
echo =  9. TA AI Editor readme                   =
echo ============Press 'Q' to go Back=============

set input=
set /p input=
if "%input%"==" " goto :tadcc
if /I '%input%'=='1' goto doc1
if /I '%input%'=='2' goto doc2
if /I '%input%'=='3' goto doc3
if /I '%input%'=='4' goto doc4
if /I '%input%'=='5' goto doc5
if /I '%input%'=='6' goto doc6
if /I '%input%'=='7' goto doc7
if /I '%input%'=='8' goto doc8
if /I '%input%'=='9' goto doc9
if /I '%input%'=='q' goto menu
pause > nul
goto :tadcc

:doc1
if exist %systemdrive%\CAVEDOG\TOTALA\docs\"TA manual.pdf" start %systemdrive%\CAVEDOG\TOTALA\docs\"TA manual.pdf " else goto :tabmdrerror
goto :tadcc

:doc2
if exist %systemdrive%\CAVEDOG\TOTALA\docs\"TA core contingency readme.txt" call %systemdrive%\CAVEDOG\TOTALA\docs\"TA core contingency readme.txt" else goto :tabmdrerror
goto :tadcc

:doc3
if exist %systemdrive%\CAVEDOG\TOTALA\docs\"TA battle tactics readme.txt" call %systemdrive%\CAVEDOG\TOTALA\docs\"TA battle tactics readme.txt" else goto :tabmdrerror
goto :tadcc

:doc4
if exist %systemdrive%\CAVEDOG\TOTALA\docs\"TA 31 patch readme.txt" call %systemdrive%\CAVEDOG\TOTALA\docs\"TA 31 patch readme.txt" else goto :tabmdrerror
goto :tadcc

:doc5
if exist %systemdrive%\CAVEDOG\TOTALA\docs\"TA 391 patch readme.txt" call %systemdrive%\CAVEDOG\TOTALA\docs\"TA 391 patch readme.txt" else goto :tabmdrerror
goto :tadcc

:doc6
if exist %systemdrive%\CAVEDOG\TOTALA\docs\"TA cheats.txt" call %systemdrive%\CAVEDOG\TOTALA\docs\"TA cheats.txt" else goto :tabmdrerror
goto :tadcc

:doc7
if exist %systemdrive%\CAVEDOG\TOTALA\docs\"TAE readme.txt" call %systemdrive%\CAVEDOG\TOTALA\docs\"TAE readme.txt" else goto :tabmdrerror
goto :tadcc

:doc8
if exist %systemdrive%\CAVEDOG\TOTALA\docs\"TA unit editor readme.txt" call %systemdrive%\CAVEDOG\TOTALA\docs\"TA unit editor readme.txt" else goto :tabmdrerror
goto :tadcc

:doc9
::AI editor here
goto :tadcc

:tabmdrerror
echo file does not exist, get a new one!
pause
goto :tadcc

:selection4
:dm
cls
title Total Annihilation Directory Managment
echo =============================================
echo =            Total Annihilation             =
echo =============Directory Managment=============
echo =  1. Open TOTALA Directory                 =
echo =  2. Open TA Bacukup Directory             =
echo =  3. Backup TA                             =
echo =  4. Restore TA from backup                =
echo =  5. TA Directory Cleanup                  =
echo ============Press 'Q' to go Back=============
set input=
set /p input=
if "%input%"==" " goto :dm
if /I '%input%'=='1' goto dm1
if /I '%input%'=='2' goto dm2
if /I '%input%'=='3' goto dm3
if /I '%input%'=='4' goto dm4
if /I '%input%'=='4' goto dm4
if /I '%input%'=='q' goto menu
pause > nul
goto :dm

:dm1
start %systemdrive%\CAVEDOG\TOTALA
pause
goto :dm

:dm2
start %systemdrive%\CAVEDOG\"Total Annihilation backup"\TOTALA
pause
goto :dm

:dm3
::back up
if exist %systemdrive%\CAVEDOG\"Total Annihilation backup"\TOTALA ( echo a Total Annihilation backup already exisits! && pause && goto :dm)
if not exist %systemdrive%\CAVEDOG\"Total Annihilation backup" md %systemdrive%\CAVEDOG\"Total Annihilation backup"
DIR %systemdrive%\CAVEDOG\TOTALA /B /C /Q /S > %systemdrive%\CAVEDOG\"TOTALA File List".txt
xcopy /e /y %systemdrive%\CAVEDOG\TOTALA %systemdrive%\CAVEDOG\"Total Annihilation backup"\TOTALA && ( echo the Total Annihilation backup has been created. && pause && goto :dm )
goto :dm

:dm4
::restore
if not exist %systemdrive%\CAVEDOG\"Total Annihilation backup"\TOTALA echo Make a TA Backup first! && pause && goto :dm
if exist %systemdrive%\CAVEDOG\TOTALA rd /s %systemdrive%\CAVEDOG\TOTALA
xcopy /e /y %systemdrive%\CAVEDOG\"Total Annihilation backup"\TOTALA %systemdrive%\CAVEDOG\TOTALA && echo The Total Annihilation restored from backup! && pause && goto :dm
goto :dm

:dm5
::trash files
:: txt
if exist %systemdrive%\CAVEDOG\TOTALA\taccread.txt del %systemdrive%\CAVEDOG\TOTALA\taccread.txt
if exist %systemdrive%\CAVEDOG\TOTALA\readme31.txt del %systemdrive%\CAVEDOG\TOTALA\readme31.txt
if exist %systemdrive%\CAVEDOG\TOTALA\readme.txt del %systemdrive%\CAVEDOG\TOTALA\readme.txt
if exist %systemdrive%\CAVEDOG\TOTALA\BTreadme.txt del %systemdrive%\CAVEDOG\TOTALA\BTreadme.txt
if exist %systemdrive%\CAVEDOG\TOTALA\errorlog.txt del %systemdrive%\CAVEDOG\TOTALA\errorlog.txt rem TA Error Log
:: DOC
if exist %systemdrive%\CAVEDOG\TOTALA\taccread.doc del %systemdrive%\CAVEDOG\TOTALA\taccread.doc
if exist %systemdrive%\CAVEDOG\TOTALA\readme.doc del %systemdrive%\CAVEDOG\TOTALA\readme.doc
if exist %systemdrive%\CAVEDOG\TOTALA\btreadme.doc del %systemdrive%\CAVEDOG\TOTALA\btreadme.doc
:: INI
if exist %systemdrive%\CAVEDOG\TOTALA\setup.ini del %systemdrive%\CAVEDOG\TOTALA\setup.ini rem TA information file replaced with TA.ini
:: EXE
if exist %systemdrive%\CAVEDOG\TOTALA\tabtunst.exe del %systemdrive%\CAVEDOG\TOTALA\tabtunst.exe rem BT uninstaller
if exist %systemdrive%\CAVEDOG\TOTALA\setup.exe del %systemdrive%\CAVEDOG\TOTALA\setup.exe rem TA Setup

::trash folders
if exist %systemdrive%\CAVEDOG\TOTALA\log rd /s /q %systemdrive%\CAVEDOG\TOTALA\log rem DemoRecorder Logs
if exist %systemdrive%\CAVEDOG\TOTALA\backup rd /s /q %systemdrive%\CAVEDOG\TOTALA\backup rem CC Install Backup
if exist %systemdrive%\CAVEDOG\TOTALA\bt rd /s /q %systemdrive%\CAVEDOG\TOTALA\bt rem unneeded BT files
if exist %systemdrive%\CAVEDOG\TOTALA\cc rd /s /q %systemdrive%\CAVEDOG\TOTALA\cc rem unneeded CC files
if exist %systemdrive%\CAVEDOG\TOTALA\btbackup rd /s /q %systemdrive%\CAVEDOG\TOTALA\btbackup rem bt Install Backup
:: New Menu Option
if exist %systemdrive%\CAVEDOG\TOTALA\savegame rd /s /q %systemdrive%\CAVEDOG\TOTALA\savegame Rem Savegames, folder is auto created when new saves are made
echo TA dir cleanup complete! && pause
goto :dm

:selection5
:taw
cls
title Total Annihilation Web
echo =============================================
echo =            Total Annihilation             =
echo =====================Web=====================
echo =  1. Cavedog                               =
echo =  2. TA Universe                           =
echo =  3. Unit Universe                         =
echo =  4. File Planet                           =
echo =  5. TA Boot Menu Source Code              =
echo =  6. Buy Total Annihilation                =
echo =  7. Get Patches                           =
echo =  8. TA Fourms                             =
echo ============Press 'Q' to go Back=============
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
pause > nul
goto :taw


:help
cls
title Total Annihilation Help
echo =============================================
echo =            Total Annihilation             =
echo ====================Help=====================
echo =  1. About TA Boot Menu                    =
echo =  2. Patches                               =
echo =  3. Backup                                =
echo =  4. Restore                               =
echo =  5. Cleanup                               =
echo =  6. Diagnostics                           =
echo =  7. Web                                   =
echo ============Press 'Q' to go Back=============
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
pause > nul
goto :help

:help1
echo.
echo The Total Annihilation Boot Menu is a support script writtin in Windows Batch 
echo and is itended to aid in the Total Annihilation moding process, which at times 
echo can be tedius and repetitive. 
echo.
echo Ta Boot Menu can Clean up known unneeded files, Create Backups, Replace Corrupted
echo Files download new content and direct you toward a slew of old and new TA Content
echo around the world wide web. 
echo.
echo There is much to discover in Total Annihilation from Fanmade Patches, Utilities
echo and Ai's to Homebrew expansion packs and fullgame Mods. With some help managing 
echo files and acsessing content from around the internet the game playing experience 
echo can be off the self new every time you play! 
echo.
echo The TA Modding community is supportive and full of Cavedog Great content. There is 
echo enough Maps, Units, Ai's, Art and support for this amazing game to keep it alive
echo long after the war for imortality has rusted and withered away! 
echo.
pause>nul
echo ~~ KEEP TA ALIVE AND MAKE SOME CONTENT! ~~
echo.
pause
goto :help
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
echo =  6. x                                    =
echo =============Press 'Q' to Quit==============
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
pause > nul
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

:credits
cls
echo Hey, my name is Christopher aka Jedi and I'm writing TA Boot Menu to contribute to all the
echo great work that the Total Annihilation community does in keeping this amazing game alive.
echo I, like everyone else in the modding community can use any support I can get, please donate!
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
:rs
start cmd %systemdrive%\CAVEDOG\TOTALA\"TA Boot Menu 1d.bat" /b /seperate /normal /realtime
goto :menu
:quit
cls
echo ============================================
echo =     Thank You for using TA Boot Menu     =
echo ============================================
pause>nul
exit

:Menuname
pause>nul

goto :
