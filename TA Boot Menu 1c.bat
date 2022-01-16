ECHO OFF
:MENU
CLS
TITLE Total Annihilation Boot Menu
ECHO ============================================
ECHO =             Total Annihilation           =
ECHO ==================BOOT MENU=================
ECHO =  1. Start Total Annihilation             =
ECHO =  2. TA Editors                           =
ECHO =  3. Documents and Cheat Codes            =
Echo =  4. TA Directory Managment               =
ECHO =  5. TA Web                               =
ECHO =  H. Help                                 =
ECHO =  C. Credits                              =
ECHO =  R. Restart TA:R Boot Menu               =
ECHO =============PRESS 'Q' TO QUIT==============
SET INPUT=
SET /P INPUT=
IF "%INPUT%"==" " GOTO :MENU
IF /I '%INPUT%'=='1' GOTO Selection1
IF /I '%INPUT%'=='2' GOTO Selection2
IF /I '%INPUT%'=='3' GOTO Selection3
IF /I '%INPUT%'=='4' GOTO Selection4
IF /I '%INPUT%'=='5' GOTO Selection5
IF /I '%INPUT%'=='6' GOTO Selection6
IF /I '%INPUT%'=='7' GOTO Selection7
IF /I '%INPUT%'=='H' GOTO help
IF /I '%INPUT%'=='C' GOTO Credits
IF /I '%INPUT%'=='R' GOTO RS
IF /I '%INPUT%'=='Q' GOTO Quit
PAUSE > NUL
GOTO :MENU

:Selection1 
START %SystemDrive%\CAVEDOG\TOTALA\"TotalA.exe"
GOTO :MENU

:Selection2 
:editors
cls
TITLE Total Annihilation Editors
ECHO =============================================
ECHO =            Total Annihilation             =
ECHO ===================Editors===================
ECHO =  1. Start TAE Map Editor                  =
ECHO =  2. Start TA Unit Editor                  =
ECHO =  3. Start SAID AI Editor                  =
ECHO ============PRESS 'Q' TO GO BACK=============
SET INPUT=
SET /P INPUT=
IF "%INPUT%"==" " GOTO :editors
IF /I '%INPUT%'=='1' GOTO editors1
IF /I '%INPUT%'=='2' GOTO editors2
IF /I '%INPUT%'=='3' GOTO editors3
IF /I '%INPUT%'=='Q' GOTO MENU
PAUSE > NUL
GOTO :editors

:editors1
START %SystemDrive%\CAVEDOG\TOTALA\TAE.exe
GOTO :editors

:editors2
START %SystemDrive%\CAVEDOG\TOTALA\"TA Unit Editor"\"TA Unit Editor.exe"
GOTO :editors

:editors3
START %SystemDrive%\CAVEDOG\TOTALA\SAID2.exe
GOTO :editors
          
:Selection3
:tadcc
CLS
TITLE Total Annihilation Documents 
ECHO =============================================
ECHO =       Total Annihilation Documents        =
ECHO =============================================
ECHO =  1. Total Annihilation Manual             =
ECHO =  2. TA Core Contingency Readme            =  
ECHO =  3. TA Battle Tactics Readme              = 
ECHO =  4. TA 3.1 Patch Readme                   =
ECHO =  5. TA 3.9.01 Patch Readme                = 
ECHO =  6. TA Cheat Codes                        =
ECHO =  7. TAE Readme                            =
ECHO =  8. TA Unit Editor Readme                 =  
ECHO =  9. TA Ai Editor Readme                   =                        
ECHO ============PRESS 'Q' TO GO BACK=============

SET INPUT=
SET /P INPUT=
IF "%INPUT%"==" " GOTO :tadcc
IF /I '%INPUT%'=='1' GOTO DOC1
IF /I '%INPUT%'=='2' GOTO DOC2
IF /I '%INPUT%'=='3' GOTO DOC3
IF /I '%INPUT%'=='4' GOTO DOC4
IF /I '%INPUT%'=='5' GOTO DOC5
IF /I '%INPUT%'=='6' GOTO DOC6
IF /I '%INPUT%'=='7' GOTO DOC7
IF /I '%INPUT%'=='8' GOTO DOC8
IF /I '%INPUT%'=='9' GOTO DOC9
IF /I '%INPUT%'=='Q' GOTO MENU
PAUSE > NUL
GOTO :tadcc

:DOC1
If exist %SystemDrive%\CAVEDOG\TOTALA\Docs\"TA Manual.pdf" START %SystemDrive%\CAVEDOG\TOTALA\Docs\"TA Manual.pdf " ELSE GOTO :tabmdrerror
goto :tadcc

:DOC2
If exist %SystemDrive%\CAVEDOG\TOTALA\Docs\"TA Core Contingency Readme.txt" CALL %SystemDrive%\CAVEDOG\TOTALA\Docs\"TA Core Contingency Readme.txt" ELSE GOTO :tabmdrerror
goto :tadcc

:DOC3
If exist %SystemDrive%\CAVEDOG\TOTALA\Docs\"TA Battle Tactics Readme.txt" CALL %SystemDrive%\CAVEDOG\TOTALA\Docs\"TA Battle Tactics Readme.txt" ELSE GOTO :tabmdrerror
goto :tadcc

:DOC4
If exist %SystemDrive%\CAVEDOG\TOTALA\Docs\"TA 31 Patch Readme.txt" CALL %SystemDrive%\CAVEDOG\TOTALA\Docs\"TA 31 Patch Readme.txt" ELSE GOTO :tabmdrerror
goto :tadcc

:DOC5
If exist %SystemDrive%\CAVEDOG\TOTALA\Docs\"TA 391 Patch Readme.txt" CALL %SystemDrive%\CAVEDOG\TOTALA\Docs\"TA 391 Patch Readme.txt" ELSE GOTO :tabmdrerror
goto :tadcc

:DOC6
If exist %SystemDrive%\CAVEDOG\TOTALA\Docs\"TA Cheats.txt" CALL %SystemDrive%\CAVEDOG\TOTALA\Docs\"TA Cheats.txt" ELSE GOTO :tabmdrerror
goto :tadcc

:DOC7
If exist %SystemDrive%\CAVEDOG\TOTALA\Docs\"TAE Readme.txt" CALL %SystemDrive%\CAVEDOG\TOTALA\Docs\"TAE Readme.txt" ELSE GOTO :tabmdrerror
goto :tadcc

:DOC8
If exist %SystemDrive%\CAVEDOG\TOTALA\Docs\"TA Unit Editor Readme.txt" CALL %SystemDrive%\CAVEDOG\TOTALA\Docs\"TA Unit Editor Readme.txt" ELSE GOTO :tabmdrerror
goto :tadcc

:DOC9
::Ai editor here
goto :tadcc

:tabmdrerror
ECHO File does not exist, get a new one!
pause 
goto :tadcc

:Selection4 
:dm
cls
TITLE Total Annihilation Directory Managment
ECHO =============================================
ECHO =            Total Annihilation             =
ECHO =============Directory Managment=============
ECHO =  1. Open Total Annihilation Directory     =
ECHO =  2. Back Up TA                            =
ECHO =  3. Restore TA from Back Up               =
ECHO =  4. TA Directory Cleanup                  =
ECHO ============PRESS 'Q' TO GO BACK=============
SET INPUT=
SET /P INPUT=
IF "%INPUT%"==" " GOTO :dm
IF /I '%INPUT%'=='1' GOTO dm1
IF /I '%INPUT%'=='2' GOTO dm2
IF /I '%INPUT%'=='3' GOTO dm3
IF /I '%INPUT%'=='4' GOTO dm4
IF /I '%INPUT%'=='Q' GOTO MENU
PAUSE > NUL
GOTO :dm

:dm1
cd %SystemDrive%\CAVEDOG\TOTALA
DIR /A
PAUSE
GOTO :dm

:dm2
::Back Up 
IF EXIST %SYSTEMDRIVE%\CAVEDOG\"Total Annihilation Backup"\TOTALA ( ECHO A Total Annihilation Backup Already Exisits! && Pause && goto :MENU )
IF NOT EXIST %SYSTEMDRIVE%\CAVEDOG\"Total Annihilation Backup" MD %SYSTEMDRIVE%\CAVEDOG\"Total Annihilation Backup"
DIR /A > %SYSTEMDRIVE%\CAVEDOG\TOTALA\Filelist.txt
XCOPY /E /Y %SYSTEMDRIVE%\CAVEDOG\TOTALA %SYSTEMDRIVE%\CAVEDOG\"Total Annihilation Backup"\TOTALA && ( ECHO The Total Annihilation Backup has been created. && Pause && goto :MENU ) 
PAUSE
GOTO :dm

:dm3
IF EXIST %SYSTEMDRIVE%\CAVEDOG\"Total Annihilation Backup"\TOTALA( 
XCOPY /U /E /Y %SYSTEMDRIVE%\CAVEDOG\"Total Annihilation Backup"\TOTALA %SYSTEMDRIVE%\CAVEDOG\TOTALA && ( ECHO The Total Annihilation restored... && Pause && goto :MENU )
if not exist in %SYSTEMDRIVE%\CAVEDOG\"Total Annihilation Backup"\TOTALA\Filelist.txt do del %SYSTEMDRIVE%\CAVEDOG\TOTALA 
PAUSE
GOTO :dm

:dm4
::Trash Files
if exist %SystemDrive%\CAVEDOG\TOTALA\Taccread.txt del %SystemDrive%\CAVEDOG\TOTALA\Taccread.txt
if exist %SystemDrive%\CAVEDOG\TOTALA\readme31.txt del %SystemDrive%\CAVEDOG\TOTALA\readme31.txt
if exist %SystemDrive%\CAVEDOG\TOTALA\readme.txt del %SystemDrive%\CAVEDOG\TOTALA\readme.txt
if exist %SystemDrive%\CAVEDOG\TOTALA\Taccread.doc del %SystemDrive%\CAVEDOG\TOTALA\Taccread.doc
if exist %SystemDrive%\CAVEDOG\TOTALA\readme.doc del %SystemDrive%\CAVEDOG\TOTALA\readme.doc
if exist %SystemDrive%\CAVEDOG\TOTALA\BTreadme.doc del %SystemDrive%\CAVEDOG\TOTALA\BTreadme.doc
if exist %SystemDrive%\CAVEDOG\TOTALA\setup.ini del %SystemDrive%\CAVEDOG\TOTALA\setup.ini
if exist %SystemDrive%\CAVEDOG\TOTALA\Tabtunst.exe del %SystemDrive%\CAVEDOG\TOTALA\Tabtunst.exe
if exist %SystemDrive%\CAVEDOG\TOTALA\setup.exe del %SystemDrive%\CAVEDOG\TOTALA\setup.exe
if exist %SystemDrive%\CAVEDOG\TOTALA\errorlog.txt del %SystemDrive%\CAVEDOG\TOTALA\errorlog.txt
::Trash Folders
if exist %SystemDrive%\CAVEDOG\TOTALA\log rd /s /q %SystemDrive%\CAVEDOG\TOTALA\log
if exist %SystemDrive%\CAVEDOG\TOTALA\BACKUP rd /s /q %SystemDrive%\CAVEDOG\TOTALA\BACKUP
if exist %SystemDrive%\CAVEDOG\TOTALA\BT rd /s /q %SystemDrive%\CAVEDOG\TOTALA\BT
if exist %SystemDrive%\CAVEDOG\TOTALA\CC rd /s /q %SystemDrive%\CAVEDOG\TOTALA\CC
if exist %SystemDrive%\CAVEDOG\TOTALA\BTbackup rd /s /q %SystemDrive%\CAVEDOG\TOTALA\BTbackup
if exist %SystemDrive%\CAVEDOG\TOTALA\SAVEGAME rd /s /q %SystemDrive%\CAVEDOG\TOTALA\SAVEGAME
Echo TA Dir cleanup complete! && pause
GOTO :dm

:Selection5
:taw
cls
TITLE Total Annihilation Web
ECHO =============================================
ECHO =            Total Annihilation             =
ECHO =====================Web=====================
ECHO =  1. Cavedog 		                 =
ECHO =  2. TA Universe 		                 =
ECHO =  3. Unit Universe 		         =
ECHO =  4. File Planet	                 	 =
ECHO =  5. TA Boot Menu Sorce Code            	 =
ECHO =  6. Buy Total Annihilation             	 =
ECHO =  7. Get Patches                   	 =
ECHO ============PRESS 'Q' TO GO BACK=============
SET INPUT=
SET /P INPUT=
IF "%INPUT%"==" " GOTO :taw
IF /I '%INPUT%'=='1' GOTO taw1
IF /I '%INPUT%'=='2' GOTO taw2
IF /I '%INPUT%'=='3' GOTO taw3
IF /I '%INPUT%'=='4' GOTO taw4
IF /I '%INPUT%'=='5' GOTO taw5
IF /I '%INPUT%'=='6' GOTO taw6
IF /I '%INPUT%'=='7' GOTO taw7
IF /I '%INPUT%'=='8' GOTO taw8
IF /I '%INPUT%'=='Q' GOTO MENU
PAUSE > NUL
GOTO :taw 


:help
cls
TITLE Total Annihilation Help
ECHO =============================================
ECHO =            Total Annihilation             =
ECHO ====================Help=====================
ECHO =  1. TA Boot Menu Basics                   =
ECHO =  2. Patches 		                 =
ECHO =  3. Backup              		         =
ECHO =  4. Restore	                 	 =
ECHO =  5. Diagnostics                       	 =
ECHO =  6. Web                           	 =
ECHO =  7.                               	 =
ECHO ============PRESS 'Q' TO GO BACK=============
SET INPUT=
SET /P INPUT=
IF "%INPUT%"==" " GOTO :help
IF /I '%INPUT%'=='1' GOTO help1
IF /I '%INPUT%'=='2' GOTO help2
IF /I '%INPUT%'=='3' GOTO help3
IF /I '%INPUT%'=='4' GOTO help4
IF /I '%INPUT%'=='5' GOTO help5
IF /I '%INPUT%'=='6' GOTO help6
IF /I '%INPUT%'=='7' GOTO help7
IF /I '%INPUT%'=='Q' GOTO MENU
PAUSE > NUL
GOTO :help 


:credits
cls
echo Hey, my name is Christopher aka Jedi and I'm writing TA Boot Menu to contribute to all the
echo great work that the Total Annihilation Community does in keeping this amazing game alive.
echo I, like everyone else in the modding community can use any support I can get, please Donate!
pause>nul
echo.
echo TA Boot Menu is intended to fill in gaps in the modding process by automating many of the
echo common time consuming tasks such as backing up and restoring the totala directory and
echo putting websites and fan made content a few button presses away.
pause>nul
echo.
echo Any contribution is a good contribution, if you have suggestions or errors to report
echo please feel free to send me an email @ jedininja38@gmail.com and i will respond as
echo soon as i am able.
pause>nul
echo.
echo TA Boot Menu is completly rolyty free and you can do as you please with it! 
echo All I ask for is a Credit in the code and a link to my someday website!. "Jedi"
pause>nul
cls
ECHO ============================================
ECHO =             Total Annihilation           =
ECHO ==================BOOT MENU=================
pause>nul
goto :menu
:RS
START CMD %SystemDrive%\CAVEDOG\TOTALA\"TA Boot Menu 1c.bat" /B /SEPERATE /NORMAL /REALTIME
GOTO :MENU
:Quit
CLS
ECHO ============================================
ECHO =     Thank you for using TA Boot Menu     =
ECHO ============================================
PAUSE>NUL
EXIT