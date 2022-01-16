:AppStart
@ECHO OFF
SETLOCAL ENABLEEXTENSIONS
:Intro
title T
echo ===  ====== ===== =======  ===== === ===
echo =               T   o      u
echo =     ====                              ===
echo =  1.
echo =
echo =  3.   c       a d       Co               =
echo =
echo =  5     Web                               =
echo =   .    M  s                              =
echo =   .                                      =
echo =   . He p
echo =
echo =    o
echo =  r.              o
echo =======  ==========    =========== == ======
echo =        %date%                  =
echo   ===========      "Q" 2    it=======   ===
TIMEOUT /T 1 >NUL
cls
title TA
echo ===  ====== ============= ====== === === ==
echo =               T   o   M nu
echo =     ====    === = =   = == ==         ===
echo =  1.       Tot l
echo =  2.    Ed
echo =  3.   c me    and       Codes            =
echo =
echo =  5.    Web                               =
echo =   .    Mods                              =
echo =  7.                                      =
echo =   . He p
echo =
echo =  o                                       =
echo =  r.            Boot
echo ======= =========== == =========== =========
echo =        %date%                  =
echo = ===========Pr  s "Q" to  uit======= = ===
TIMEOUT /T 1 >NUL
cls
title TA Boot
echo ===  ==================================  =
echo =               TA  oo  M nu               =
echo =     ====    === = =   = == ==         ===
echo =  1.       Total Anni   ation
echo =  2.    Ed tor
echo =  3.   c me    and       Codes            =
echo =   .    Dir       Managment               =
echo =  5.    Web                               =
echo =   . T  Mods                              =
echo =  7.                                      =
echo =   . He p
echo =   . Cre
echo =  o                                       =
echo =  r.     art TA Boot    u                 =
echo ======= ========================== =========
echo =        %date%                  =
echo =============Press "Q" to Quit==============
TIMEOUT /T 1 >NUL
::16 x 45
:Endintro

:Load
::directories
set cddir=%systemdrive%\CAVEDOG
set tadir=%systemdrive%\CAVEDOG\TOTALA
set dml=%tadir%\%username%
set tae=%tadir%\TAE
set aif=%tadir%\Ai
set gmd=%tadir%\gamedata
set svg=%tadir%\SAVEGAME
set bim=%tadir%\Bitmaps
set cps=%tadir%\camps
set doc=%tadir%\docs
set mus=%tadir%\tmusi
set tab=%cddir%\TABackup
set taba=%tab%\TOTALA
set bfl=%tab%\tafilelist.txt
::game related
set ta=Total Annihilation
set cd=https://www.tauniverse.com/cavedog-mirror
set fu=https://files.tauniverse.com/
set tu=https://www.tauniverse.com
set tf=https://www.tauniverse.com/forum/
set pa=www.planetannihilation.com
set te=taesc.tauniverse.com
set mp1=https://files.tauniverse.com/files/ta/maps-1/
set mp2=https://files.tauniverse.com/files/ta/maps-2/
set ai1=https://files.tauniverse.com/files/ta/ais/
set un1=http://units.tauniverse.com/
set ol1=https://www.taforever.com/
set ut1=https://files.tauniverse.com/files/ta/utilities/
set pt1=https://files.tauniverse.com/files/ta/unofficial-patch/
::errors
set nf=File does not exist!
set df=Directory does not exist!
set nid=not installed in the CAVEDOG\TOTALA Directory.
:EndLoad


:menu
cls
set h=:menu
title TA Boot Menu
echo ============================================
echo =               TA Boot Menu               =
echo ============================================
echo =  1. Start Total Annihilation             =
echo =  2. TA Editors                           =
echo =  3. Documents and Cheat Codes            =
echo =  4. TA Directory Managment               =
echo =  5. TA Web                               =
echo =  6. TA Mods                              =
echo =  7. Tools                                =
echo =  h. Help                                 =
echo =  c. Credits                              =
echo =  o. Options                              =
echo =  r. Restart TA Boot Menu                 =
echo ============================================
echo =  Date: %date%  Time:%time%  =
echo =============Press "Q" to Quit==============
set r=%random% & If /I 1800 gtr %r% Echo Welcome Commander... %r%
set i= & set /p i= & if /I "%i%"==" " goto :Load
if /I "%i%"=="1" start %tadir%\"totalA.exe" /ABOVENORMAL /WAIT
if /I "%i%"=="2" goto :editors
if /I "%i%"=="3" goto :docs
if /I "%i%"=="4" goto :dm
if /I "%i%"=="5" goto :taw
if /I "%i%"=="6" goto :mods
if /I "%i%"=="7" goto :tools
if /I "%i%"=="h" goto :help
if /I "%i%"=="c" goto :credits
if /I "%i%"=="r" start cmd %tadir%\"TA Boot Menu 1e.bat" /b /REALTIME
if /I "%i%"=="q" goto :quit
goto :Load

:editors
cls
set h=:editors
title TA Boot Menu
echo ============================================
echo =               TA Boot Menu               =
echo ===================Editors==================
echo =  1. Start TAE Map Editor                 =
echo =  2. Start Anninilator Map Editor         =
echo =  3. Start TA unit Editor                 =
echo =  4. Start Said AI Editor                 =
echo ============================================
echo =  Date: %date%  Time:%time%  =
echo ============Press "Q" to go Back============
set i= & set /p i= & if /I "%i%"==" " goto %h%
if /I "%i%"=="1" if exist %tadir%\TAE.exe (start %tadir%\TAE.exe & goto %h%) else echo TAE %nid% & pause & goto %h%
if /I "%i%"=="2" if exist %tadir%\Annihilator.exe (start %tadir%\Annihilator.exe & goto %h%) else echo Annihilator %nid% & pause & goto %h%
if /I "%i%"=="3" if exist %tadir%\"TA unit editor" (start %tadir%\"TA unit editor"\"TA unit editor.exe") & goto %h%  else echo Unit Editor %nid% & pause & goto %h%
if /I "%i%"=="4" if exist %tadir%\said2.exe (start %tadir%\said2.exe & goto %h% /REALTIME) else echo SAID2 %nid% & pause & goto %h%
if /I "%i%"=="q" goto :menu
goto %h%


:docs
set h=:docs
cls
title TA Boot Menu
echo ============================================
echo =               TA Boot Menu               =
echo =================Documents==================
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
echo =  Date: %date%  Time:%time%  =
echo ============Press "Q" to go Back============
set i= & set /p i= & if /I "%i%"==" " goto %h%
if /I "%i%"=="1" if exist %doc%/"TA manual.pdf" start %doc%/"TA manual.pdf " else goto :docer
if /I "%i%"=="2" if exist %doc%/"TA core contingency readme.txt" call %doc%/"TA core contingency readme.txt" else goto :docer
if /I "%i%"=="3" if exist %doc%/"TA battle tactics readme.txt" call %doc%/"TA battle tactics readme.txt" else goto :docer
if /I "%i%"=="4" if exist %doc%/"TA 31 patch readme.txt" call %doc%/"TA 31 patch readme.txt" else goto :docer
if /I "%i%"=="5" if exist %doc%/"TA 391 patch readme.txt" call %doc%/"TA 391 patch readme.txt" else goto :docer
if /I "%i%"=="6" if exist %doc%/"TA cheats.txt" call %doc%/"TA cheats.txt" else goto :docer
if /I "%i%"=="7" if exist %doc%/"TA Map Editor Readme.txt" call %doc%/"TA Map Editor Readme.txt" else goto :docer
if /I "%i%"=="8" if exist %doc%/"TA unit editor readme.txt" call %doc%/"TA unit editor readme.txt" else goto :docer
if /I "%i%"=="9" echo SAID2 here & goto %h%
if /I "%i%"=="10" echo Stratiges Guide here & goto %h%
if /I "%i%"=="q" goto :menu
goto %h%
:docer
echo %nf%
pause>nul
goto %h%

:dm
cls
set h=:dm
title TA Boot Menu
echo ============================================
echo =               TA Boot Menu               =
echo =============Directory Managment============
echo =  1. Backup TA                            =
echo =  2. Restore TA from Backup               =
echo =  3. TA Directory Cleanup                 =
echo =  4. Delete Savegames                     =
echo =  5. Remove TAE                           =
echo =  6. Remove Annihilator                   =
echo ============================================
echo =  Date: %date%  Time:%time%  =
echo ============Press "Q" to go Back============
set i= & set /p i= & if /I "%i%"==" " goto %h%
if /I "%i%"=="1" goto :dm1
if /I "%i%"=="2" goto :dm2
if /I "%i%"=="3" goto :dm3
if /I "%i%"=="4" if exist %svg% (rd /s /q %svg% & echo savegames deleted! & pause) else echo %nf% & pause
if /I "%i%"=="5" goto %h%
if /I "%i%"=="6" goto %h%
if /I "%i%"=="q" goto :menu
goto %h%

:dm1
::back up
if exist %tab% rd /s /q %tab%
if not exist %tab% md %tab% & echo Please Wait...
DIR %tadir% /B /S > %bfl%
xcopy /e /i /q /-y %tadir% %taba% & echo the %ta% backup has been created. & pause & goto %h%
goto %h%

:dm2
::restore
if not exist %taba% echo Make a TA Backup first! & pause & goto %h%
if exist %tadir% rd /s /q %tadir% & echo Please Wait...
xcopy /e /i /q /-y %taba% %tadir% & echo %ta% sucsessfully restored from backup! & pause & goto %h%
goto %h%

:dm3
::cleanup
::orginize by file origin
::Need ota, cc, bt, 31, 391, 392, Files
if exist %tadir%\taccread.txt del /f /q %tadir%\taccread.txt
if exist %tadir%\readme31.txt del /f /q %tadir%\readme31.txt
if exist %tadir%\readme.txt del /f /q %tadir%\readme.txt
if exist %tadir%\BTreadme.txt del /f /q %tadir%\BTreadme.txt
if exist %tadir%\errorlog.txt del /f /q %tadir%\errorlog.txt
if exist %tadir%\TAEREAD.txt del /f /q %tadir%\TAEREAD.txt
if exist %tadir%\INSTALL.log del /f /q %tadir%\INSTALL.log
if exist %tadir%\taccread.doc del /f /q %tadir%\taccread.doc
if exist %tadir%\readme.doc del /f /q %tadir%\readme.doc
if exist %tadir%\btreadme.doc del /f /q %tadir%\btreadme.doc
if exist %tadir%\TAEREAD.doc del /f /q %tadir%\TAEREAD.doc
if exist %tadir%\setup.ini del /f /q %tadir%\setup.ini
if exist %tadir%\tabtunst.exe del /f /q %tadir%\tabtunst.exe
if exist %tadir%\setup.exe del /f /q %tadir%\setup.exe
if exist %tadir%\log rd /q /s %tadir%\log
if exist %tadir%\backup rd /q /s %tadir%\backup
if exist %tadir%\bt rd /q /s %tadir%\bt
if exist %tadir%\cc rd /q /s %tadir%\cc
if exist %tadir%\btbackup rd /q /s %tadir%\btbackup
if exist %tadir%\%userName% rd /q /s %tadir%\%userName%
echo TA Directory Cleanup Complete! & pause
goto :dm

:taw
cls
set h=:taw
title TA Boot Menu
echo ============================================
echo =               TA Boot Menu               =
echo ==================Websites==================
echo =  1. Cavedog Mirror                       =
echo =  2. TA Universe                          =
echo =  3. Unit Universe                        =
echo =  4. File Universe                        =
echo =  5. Patches                              =
echo =  6. Utilities                            =
echo =  7. Editors                              =
echo =  8. Maps                                 =
echo =  9. Ai's                                 =
echo = 10. Play Online                          =
echo = 11. TA Fourms                            =
echo = 12. TA Boot Menu Source Code             =
echo = 13. Buy Total Annihilation               =
echo ============================================
echo =  Date: %date%  Time:%time%  =
echo ============Press "Q" to go Back============
set i= & set /p i= & if /I "%i%"==" " goto %h%
if /I "%i%"=="1" start "" "https://files.tauniverse.com/"
if /I "%i%"=="2" start "" "https://www.tauniverse.com"
if /I "%i%"=="3" start "" "http://units.tauniverse.com/"
if /I "%i%"=="4" start "" "https://files.tauniverse.com/"
if /I "%i%"=="5" start "" "https://files.tauniverse.com/files/ta/unofficial-patch/ "
if /I "%i%"=="6" start "" "https://files.tauniverse.com/files/ta/utilities/ "
if /I "%i%"=="7" start "" "https://files.tauniverse.com/files/ta/unofficial-patch/ "
if /I "%i%"=="8" start "" "%mp1%" & start "" "%mp2%"
if /I "%i%"=="9" start "" "https://files.tauniverse.com/files/ta/ais/"
if /I "%i%"=="10" start "" "https://www.taforever.com/"
if /I "%i%"=="11" start "" "https://www.tauniverse.com/forum/"
if /I "%i%"=="12" echo Source Code here & pause & goto %h%
if /I "%i%"=="13" start "" "https://www.gog.com/game/total_anihilation_commander_pack"
if /I "%i%"=="q" goto :menu
goto %h%

:mods
cls
set h=:mods
title TA Boot Menu
echo ============================================
echo =               TA Boot Menu               =
echo ==================TA Mods===================
echo =  1. TA:Reclimation                       =
echo =  2. TA Escalation                        =
echo =  3. TA Zero                              =
echo =  4. TA 3D                                =
echo =  5. x                                    =
echo ============================================
echo =  Date: %date%  Time:%time%  =
echo ============Press "Q" to go Back============
set i= & set /p i= & if /I "%i%"==" " goto %h%
if /I "%i%"=="1" echo on it, im tellin ya. &pause &goto %h%
if /I "%i%"=="2" start "" "http://taesc.tauniverse.com"
if /I "%i%"=="3" start "" "http://zero.tauniverse.com/"
if /I "%i%"=="4" start "" "http://www.ta3d.org/"
if /I "%i%"=="5" echo on it, im tellin ya. &pause &goto %h%
if /I "%i%"=="6" echo on it, im tellin ya. &pause &goto %h%
if /I "%i%"=="q" goto :menu
goto %h%

:tools
cls
set h=:tools
title TA Boot Menu
echo ============================================
echo =               TA Boot Menu               =
echo ===================Tools====================
echo =  1. Identify files                       =
echo =  2.                                      =
echo =  3.                                      =
echo =  4.                                      =
echo =  5.                                      =
echo ============================================
echo =  Date: %date%  Time:%time%  =
echo ============Press "Q" to go Back============
set i= & set /p i= & if /I "%i%"==" " goto %h%
if /I "%i%"=="1" goto :Idf
if /I "%i%"=="2" goto :tools
if /I "%i%"=="3" goto :tools
if /I "%i%"=="4" goto :tools
if /I "%i%"=="5" goto :tools
if /I "%i%"=="6" goto :tools
if /I "%i%"=="q" goto :menu
goto %h%

:Idf
if exist %cddir% (goto :er1) else (echo cannot find %cddir% & pause & goto %h%)
:er1
if exist %tab% (goto :er2) else (echo cannot find %tab% & pause & goto %h%)
:er2
if exist %bfl% (goto :er3) else (echo cannot find %bfl% & pause & goto %h%)
:er3


:fid
::ota files
set ta=Total Annihilation
set cc=Core Contingency Expansion pack
set bt=Battle Tactics Expansion pack
set tacd=Total Annihilation CD
set ccdc=Core Contingency CD
set btdc=Battle Tactics CD
::patches
set 31=3.1 Patch
set 91=3.9.01 Patch
set 92=3.9.02 Patch
::mods
set t3d=Total Annihilation 3D
set taes=Total Annihilation Escalation
set taz=Total Annihilation Zero
::Data Files
set udf=Unit Data File
set mdf=Map Data File
set mif=Mission Data File
set adf=AI Data File
set gdf=Game Data File
set st=Sound Track
::Game
set aac=ARM and CORE
set fl=Floating
set hv=Hover
set ac=Aircraft
set pl=Plant
set sp=Ship
::Words
set i=is a
set f=from
set ft=from the
set dl=download
set dld=downloaded
::Credits
set mb=made by:
set rb=repacked by:
::base on dir ta 
echo ~~ %ta% Contents ~~ & echo.
FOR /F "delims=;" %%i in (%bfl%) do (
if /i %tadir%\ccdata.ccx equ %%i echo %%i %i% %udf% %ft% %cc%
if /i %tadir%\btdata.ccx equ %%i echo %%i %i% %udf% %ft% %bt%
if /i %tadir%\Cavedog_units.ufo equ %%i echo %%i %i% %udf% %f% %cd% %rb% %uu%
if /i %tadir%\taucc-core-punisherns.ufo equ %%i echo %%i %i% %udf% %f% %uu%
if /i %tadir%\taucc-arm-guardianns.ufo equ %%i echo %%i %i% %udf% %f% %uu%
if /i %tadir%\taucc-arm-hoverplantns.ufo equ %%i echo %%i %i% %udf% %f% %uu%
if /i %tadir%\taucc-arm-radarns.ufo equ %%i echo %%i %i% %udf% %f% %uu%
if /i %tadir%\taucc-core-repairpadns.ufo equ %%i echo %%i %i% %udf% %f% %uu%
if /i %tadir%\taucc-arm-repairpadns.ufo equ %%i echo %%i %i% %udf% %f% %uu%
if /i %tadir%\Immer-RepairArm.ufo equ %%i echo %%i %i% %udf% %f% %uu%
if /i %tadir%\Immer-StorageFacility.ufo equ %%i echo %%i %i% %udf% %f% %uu%
if /i %tadir%\nano.ufo equ %%i echo %%i %i% %udf% %f% %uu%
if /i %tadir%\TADD-AdvHovers.ufo equ %%i echo %%i %i% %udf% %f% %uu%
if /i %tadir%\TADD-MohoGeos.ufo equ %%i echo %%i %i% %udf% %f% %uu%
if /i %tadir%\arm_ff.ufo equ %%i echo %%i %i% %udf% %f% %uu%
if /i %tadir%\arm_fff.ufo equ %%i echo %%i %i% %udf% %f% %uu%
if /i %tadir%\HoveraTAck.ufo equ %%i echo %%i %i% %udf% %f% %uu%
if /i %tadir%\P-Type.ufo equ %%i echo %%i %i% %udf% %f% %uu%
if /i %tadir%\core_ff.ufo equ %%i echo %%i %i% %udf% %f% %uu%
if /i %tadir%\core_fff.ufo equ %%i echo %%i %i% %udf% %f% %uu%
if /i %tadir%\btmaps.ccx equ %%i echo %%i %i% %mdf% %ft% %bt%
if /i %tadir%\cdmaps.ufo equ %%i echo %%i %i% %mdf% %f% %cd% %rb% %uu%
if /i %tadir%\ccmiss.ccx equ %%i echo %%i %i% %mif% %ft% %cc%
if /i %tadir%\btmiss.ccx equ %%i echo %%i %i% %mif% %ft% %bt%
if /i %tadir%\TA_Ais_2011.ccx equ %%i echo %%i %i% %adf% %ft% %uu%
if /i %tadir%\Swi_Nuke.ufo equ %%i echo %%i %i% %adf% %ft% %uu%
if /i %tadir%\TotalA.exe equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\totala1.hpi equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\totala2.hpi equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\totala3.hpi equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\tactics1.hpi equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\tactics2.hpi equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\tactics3.hpi equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\tactics4.hpi equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\tactics5.hpi equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\tactics6.hpi equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\tactics7.hpi equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\tactics8.hpi equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\tplayx.dll equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\tadwngox.dll equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\taheatx.dll equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\takalix.dll equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\tamplayx.dll equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\tatenx.dll equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\tawirepx.dll equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\audiere.dll equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\online.dll equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\mptaext.dll equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\smackw32.dll equ %%i echo %%i %i% %gdf% %ft% %tacd%
if /i %tadir%\rev31.gp3 equ %%i echo %%i %i% %udf% %ft% 3.1 Patch
)
pause
goto %h%

:quit
cls
echo ============================================
echo =     Thank You for using TA Boot Menu     =
echo ============================================
pause>nul
exit

:credits
cls
echo Hi, My name is Christopher aka Jedi and I"m writing TA Boot Menu to contribute to all the
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
echo =               TA Boot Menu               =
echo ============================================
pause>nul
goto :menu

:help
cls
set h=:help
title TA Boot Menu
echo ============================================
echo =               TA Boot Menu               =
echo ====================Help====================
echo =  1. About TA Boot Menu                   =
echo =  2. Patches                              =
echo =  3. Backup                               =
echo =  4. Restore                              =
echo =  5. Cleanup                              =
echo =  6. Diagnostics                          =
echo =  7. Web                                  =
echo ============================================
echo =  Date: %date%  Time:%time%  =
echo ============Press "Q" to go Back============
set i= & set /p i= & if /I "%i%"==" " goto %h%
if /I "%i%"=="1" goto :help1
if /I "%i%"=="2" goto :help2
if /I "%i%"=="3" goto :help3
if /I "%i%"=="4" goto :help4
if /I "%i%"=="5" goto :help5
if /I "%i%"=="6" goto :help6
if /I "%i%"=="7" goto :help
if /I "%i%"=="q" goto :menu
goto %h%

:help1
echo.
echo The Total Annihilation Boot Menu is a support
echo script writtin in Windows Batch and is intended
echo to aid in the Total Annihilation modding process,
echo which at times can be tedius and repetitive.
echo.
pause>nul
echo.
echo TA Boot Menu can clean up known unneeded files,
echo Create Backups, Replace Corrupted Files download
echo new content and direct you toward a slew of old
echo and new TA Content around the world wide web.
echo.
pause>nul
echo.
echo TA Boot Menu is best off when placed into the
echo  "CAVEGOG" Directory, but can run from any
echo loccation including USB"s, external drives or
echo phones running as mass storage devices.
echo.
pause>nul
echo.
echo Due to the usage of Windows Batch Script the
echo opperational effiecent of TA Boot Menu is subject
echo  to your local network administrations User Polices
echo reguarding Windows Command Line, Batch Files and
echo CMD command usage.
echo.
pause>nul
echo.
echo TA Boot Menu will only work with computers running
echo Microsoft Windows and does not support Linux or MacOS.
echo If you Discover an error, or have a need for new
echo fuctions/content or wish to post your TA website on
echo TA Boot Menu feel free to email me at:
echo.
echo Jedi @ "jedininja38@gmail.com"
echo Thank you for downloading TA Boot Menu.
echo.
pause
goto :help

REM ::put into "web" ->
REM echo There is much to discover in Total Annihilation from Fanmade Patches, Utilities
REM echo and Ai"s to Homebrew Mods and fullgame expansion packs. With some help managing
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
echo The file list is listed in the code of TA Boot Menu on lines 200  220.
echo To read it right click the TA boot Menu icon and go to "Edit".
echo.
echo Common files that are deleted include; readmes, error logs,seup/uninstall files
echo and log files from DemoRecorder if you are running patches 3.91 or 3.92.
echo Most of the relevent Readme files come with TA Boot Menu and can be found
echo in the documents folder in the Totala Directory.
echo.
pause>nul
goto :help

:blank
pause>nul

goto :help
========================================================================
:Commands Used
========================================================================
::Batch/VB
if
if else
if exist
if exist else
if not exist
for
for in do
pause
pause>nul
>nul
goto
break
set
cls
title
call
@echo
echo
setlocal
rd
md
start
start /REALTIME
start /ABOVENORMAL
start /ABOVENORMAL /WAIT
del
del /F /Q
rd /Q /S
dir /B /S
TIMEOUT /T 1 >NUL
xcopy /e /i /q /-y
::Fancey Conjuctions
& >
::Envrioment Variables
%random%
%systemdrive%
%username%
%date%
%time%
========================================================================
:NOTES
========================================================================
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
::Future features
-	oTA file Replacer
-		Copy Tactics, Totala1,2,3 and dll"s from disks/replce differnt Ota files
-	oTA Update Maker
-		install TA cd"s + patchs + fixes in order
-		TA + CC + bt + 3.1 + 3.9 + webunits + webmaps + nocd ini
-	File Scanner
-		List TOTALA Files and compair names/sizes to prelisted file orgins oc cd"s, patches and updates (will be mostly oTA and UU
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Strings:
(FOR /F "delims=;" %%I In (%tab%\Tafileslist.Txt) DO FOR /F "delims=;" %%V IN ("dir c:\cavedog\totala /A:-d /b /n") DO IF /I %%V Equ %%I Echo %%V )> %Systemdrive%\Cavedog\Filelog.Txt
find /c "Total Annihilation v3.9.01" %systemdrive%\CAVEDOG\TOTALA\TA.ini>nul & echo TA.ini is the Total Annihilation v3.9.01 Patch Configuration File!
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
========================================================================
:Special Score Board Feature
========================================================================
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- oTA Score is Kills x 50
- Special Score Board greatly reflects a players effiecity and tactics.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Special Score Board Equasion: ((((energy produced-excess enegery)+(metal produced-excess metal)+(Kills/losses%))*(difficulty+players))/1000) =
ssb: ((((-)+(-))+(/))*(+))/1000) =
ssb avarage: Avarage score of all ranked games played
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Blank:
Player   : k: l: ep: mp: ee: em: d: p: ssb: (((((-)+(-))*(/))*(+))/1000)
computer1: k: l: ep: mp: ee: em: d: p: ssb: (((((-)+(-))*(/))*(+))/1000)
computer2: k: l: ep: mp: ee: em: d: p: ssb: (((((-)+(-))*(/))*(+))/1000)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
test stats skirmish 2:
Player   : k: l: ep: mp: ee: em: d: p: ssb: ((((6753356-3599893)+(219486-65922)+(306/36))*(3+3))/1000) = 19842.213
computer1: k: l: ep: mp: ee: em: d: p: ssb: (((((-)+(-))*(/))*(+))/1000)
computer2: k: l: ep: mp: ee: em: d: p: ssb: (((((-)+(-))*(/))*(+))/1000)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
how to acomplish gamestats menu:
- demorecorder makes a folder for screen shots labbled "%Username%"
- taking a screen shot at the end game score screen will get the
- data needed to do the math for Special Score Board. unless there
- is a way to extract the data from the end game score screen.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
:Other Score Things
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Additional Score Points
victory: 10,000
team: 1,000 x players
9 vs 1: 10,000
k/d denominator/devisor: 1000 x denominator
no nukes: 2,000
no long range: 2,000
no experimentials: 2,000
Player Killer AI: 2,000 x Computer Team
no site = 1,000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Achivments:
commander Drop: 10,000
commander Napper: 10,000
commander Commando: 100*kills
commander Hunter: 1000*kills
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Carrer Titles:
Carrer Score: Sum of Carrer Scores
Player Killer: 100 different player kills
Noobie Killer: 100 lower rank kills
AI Killer: Defeded 100 Player Killer Ai's
Commander Killer: 1000 commander kills
Leader Hunter: 100 higher rank kills
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Carrer Rank: Games Finished, SSB Avarage, Win/Loss
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
========================================================================
:links
rem units.tauniverse.com
rem https://files.tauniverse.com/files/ta/