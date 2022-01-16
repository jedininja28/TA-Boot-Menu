ECHO OFF
::SETLOCAL ENABLEEXTENSIONS
::SETLOCAL ENABLEDELAYEDEXPANSION

:MENU
CLS
TITLE Total Annihilation Boot Menu
ECHO =============================================
ECHO =      Total Annihilation: Reclimation      =
ECHO ==================BOOT MENU==================
ECHO =  1. Start Total Annihilation: Reclimation =
ECHO =  2. Start TAE Map Editor                  =
ECHO =  3. Start TA Unit Editor                  =
ECHO =  4. Start SAID AI Editor                  =
ECHO =  5. Open Total Annihilation Directory     =
ECHO =  6. Readme's and Cheat Codes              =
ECHO =  7. Back Up TA:R                          =
ECHO =  8. Restore TA:R from Back Up             =
ECHO =  9. TA:R Story                            =
ECHO = 10. TA Cleanup                            =
ECHO =  R. Restart TA:R Boot Menu                =
ECHO =============PRESS 'Q' TO QUIT===============
::patch and unit credits


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
IF /I '%INPUT%'=='8' GOTO Selection8
IF /I '%INPUT%'=='9' GOTO Selection9
IF /I '%INPUT%'=='10' GOTO Selection10
IF /I '%INPUT%'=='r' GOTO RS
IF /I '%INPUT%'=='Q' GOTO Quit
PAUSE > NUL
GOTO :MENU

:Selection1 
START %SystemDrive%\CAVEDOG\TOTALA\"Total Annihilation.exe" | Echo Total Annihilation 3.9.01 Launcher failed to start, Press any key to run "TotalA.exe" or close TA Boot Menu to exit. && Pause && START %SystemDrive%\CAVEDOG\TOTALA\"TotalA.exe"
GOTO :MENU

:Selection2
START %SystemDrive%\CAVEDOG\TOTALA\TAE.exe
GOTO :MENU

:Selection3
START %SystemDrive%\CAVEDOG\TOTALA\"TA Unit Editor"\"TA Unit Editor.exe"
GOTO :MENU

:Selection4
START %SystemDrive%\CAVEDOG\TOTALA\SAID2.exe
GOTO :MENU

:Selection5
cd %SystemDrive%\CAVEDOG\TOTALA
DIR /A
PAUSE
GOTO :MENU

:Selection6
:tabmdr
CLS
TITLE Total Annihilation Boot Menu

ECHO =============================================
ECHO =       Total Annihilation Documents        =
ECHO =============================================
ECHO =  1. Total Annihilation Manual             =
ECHO =  2. TA Core Contingency Readme            =  
ECHO =  3. TA Battle Tactics Readme              = 
ECHO =  4. TA 3.1 Patch Readme                   =
ECHO =  5. TA 3.9.01  Patch Readme               = 
ECHO =  6. TA Cheat Codes                        =
ECHO =  7. TAE Map Editor Readme                 =
ECHO =  8. TA Unit Editor Readme                 =  
ECHO =  9. TA Ai Editor Readme                   =                        
ECHO ============PRESS 'Q' TO GO BACK=============

SET INPUT=
SET /P INPUT=
IF "%INPUT%"==" " GOTO :MENU
IF /I '%INPUT%'=='1' GOTO DOC1
IF /I '%INPUT%'=='2' GOTO DOC2
IF /I '%INPUT%'=='3' GOTO DOC3
IF /I '%INPUT%'=='4' GOTO DOC4
IF /I '%INPUT%'=='5' GOTO DOC5
IF /I '%INPUT%'=='6' GOTO DOC6
IF /I '%INPUT%'=='7' GOTO DOC7
IF /I '%INPUT%'=='8' GOTO DOC8
IF /I '%INPUT%'=='8' GOTO DOC9
IF /I '%INPUT%'=='Q' GOTO MENU
PAUSE > NUL
GOTO :MENU

:DOC1
If exist %SystemDrive%\CAVEDOG\TOTALA\Docs\"TA Manual.pdf" START C:\CAVEDOG\TOTALA\Docs\"TA Manual.pdf " ELSE GOTO :tabmdrerror
goto :tabmdr

:DOC2
If exist %SystemDrive%\CAVEDOG\TOTALA\Docs\"TA Core Contingency Readme.txt" CALL C:\CAVEDOG\TOTALA\Docs\"TA Core Contingency Readme.txt" ELSE GOTO :tabmdrerror
goto :tabmdr

:DOC3
If exist %SystemDrive%\CAVEDOG\TOTALA\Docs\"TA Battle Tactics Readme.txt" CALL C:\CAVEDOG\TOTALA\Docs\"TA Battle Tactics Readme.txt" ELSE GOTO :tabmdrerror
goto :tabmdr

:DOC4
If exist %SystemDrive%\CAVEDOG\TOTALA\Docs\"TA 31 Patch Readme.txt" CALL C:\CAVEDOG\TOTALA\Docs\"TA 31 Patch Readme.txt" ELSE GOTO :tabmdrerror
goto :tabmdr

:DOC5
If exist %SystemDrive%\CAVEDOG\TOTALA\Docs\"TA 391 Patch Readme.txt" CALL C:\CAVEDOG\TOTALA\Docs\"TA 391 Patch Readme.txt" ELSE GOTO :tabmdrerror
goto :tabmdr

:DOC6
If exist %SystemDrive%\CAVEDOG\TOTALA\Docs\"TA Cheats.txt" CALL C:\CAVEDOG\TOTALA\Docs\"TA Cheats.txt" ELSE GOTO :tabmdrerror
goto :tabmdr

:DOC7
If exist %SystemDrive%\CAVEDOG\TOTALA\Docs\"TAE Readme.txt" CALL C:\CAVEDOG\TOTALA\Docs\"TAE Readme.txt" ELSE GOTO :tabmdrerror
goto :tabmdr

:DOC8
If exist %SystemDrive%\CAVEDOG\TOTALA\Docs\"TA Unit Editor Readme.txt" CALL C:\CAVEDOG\TOTALA\Docs\"TA Unit Editor Readme.txt" ELSE GOTO :tabmdrerror
goto :tabmdr

:DOC9
::Ai editor here
goto :tabmdr

:tabmdrerror
ECHO File does not exist, get a new one!
pause 
goto :tabmdr

::Unit and Map info Here

:Selection7
::Back Up 
IF EXIST %SYSTEMDRIVE%\CAVEDOG\"Total Annihilation Backup"\TOTALA ( ECHO A Total Annihilation Backup Already Exisits! && Pause && goto :MENU )
IF NOT EXIST %SYSTEMDRIVE%\CAVEDOG\"Total Annihilation Backup" MD %SYSTEMDRIVE%\CAVEDOG\"Total Annihilation Backup"
DIR /A > %SYSTEMDRIVE%\CAVEDOG\TOTALA\Filelist.txt
XCOPY /E /Y %SYSTEMDRIVE%\CAVEDOG\TOTALA %SYSTEMDRIVE%\CAVEDOG\"Total Annihilation Backup"\TOTALA && ( ECHO The Total Annihilation Backup has been created. && Pause && goto :MENU ) 
PAUSE
GOTO :menu

:Selection8
IF EXIST %SYSTEMDRIVE%\CAVEDOG\"Total Annihilation Backup"\TOTALA( 
XCOPY /U /E /Y %SYSTEMDRIVE%\CAVEDOG\"Total Annihilation Backup"\TOTALA %SYSTEMDRIVE%\CAVEDOG\TOTALA && ( ECHO The Total Annihilation restored... && Pause && goto :MENU )
if not exist in %SYSTEMDRIVE%\CAVEDOG\"Total Annihilation Backup"\TOTALA\Filelist.txt do del %SYSTEMDRIVE%\CAVEDOG\TOTALA 

:Selection9
CLS
ECHO.
ECHO 1 ===========================================
Echo = After the fighting of the never ending    =
Echo = war for imortality seiced, the desolate   =
Echo = remains of Arm and Core layed littered    =
Echo = accross the unverse.                      =
ECHO =============================================
PAUSE >NUL
ECHO.
ECHO 2 ===========================================
Echo = The remaining governing bodies poor what  =
Echo = resorces are left in their scavanged      =
Echo = economies into rebuilding their former    =
Echo = Empires and Armies. Reclaiming the        =
Echo = smoldering ruins of long lost battles     =
Echo = of the eneternal war.                     =
ECHO =============================================
PAUSE >NUL
ECHO.
ECHO 3 ===========================================
Echo = The Reclimation of the dead has become    =
Echo = the formitable weapon of the time.        =
Echo = Ironicaly emphisizing the ideology that   =
Echo = the conquest for never ending life has    =
Echo = placed apon all of history.               =
ECHO =============================================
PAUSE >NUL
ECHO.
ECHO 4 ===========================================
Echo = Arm and Core in their cooroding state     =        
Echo = of decay and vengence push forward        =
Echo = towards the only end they ever new of...  =
ECHO =============================================
PAUSE >NUL
ECHO.
ECHO 5 ===========================================
Echo = The Total Annihilation of each other.     =
ECHO =============================================
PAUSE >NUL
CLS
ECHO =============================================
ECHO =      Total Annihilation: Reclimation      =
ECHO =============================================
PAUSE >NUL
GOTO :MENU

:Selection10
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
GOTO :MENU

:RS
START CMD %SystemDrive%\CAVEDOG\TOTALA\"TA R.bat" /B /SEPERATE /HIGH /REALTIME
GOTO MENU
:Quit
CLS
ECHO =============================================
ECHO =         Thank you for Plaing TA:R         =
ECHO =============================================
ECHO Support Stuff Here
PAUSE>NUL
EXIT