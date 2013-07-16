
@echo off

ECHO.
ECHO MapDrive v1.1, Eric Menze 2013
ECHO ==============================
REM ECHO Parameter 1: %1
REM ECHO Parameter 2: %2
REM ECHO Parameter 3: %3
ECHO.

IF %1.==. GOTO Help
IF /I "%1"=="/H" GOTO Help
IF /I "%1"=="/?" GOTO Help
IF /I "%1"=="/L" GOTO List
IF /I "%1"=="/F" GOTO Free
IF %2.==. GOTO Map
IF /I "%2"=="/D" GOTO Disconnect
IF EXIST %1 IF EXIST %2 GOTO Replace
GOTO Map

:Help
ECHO This is a tool written to aid in Mapping Directories to Drive Letters
ECHO It uses the SUBST command to accomplish this in a Windows Environment
ECHO.
ECHO USAGE: 
ECHO mapdrive [Directory]          -  Maps the directory to the next available drive letter
ECHO mapdrive [Drive] /D           -  Unmounts the mapped virtual drive (if it used subst)
ECHO mapdrive [Drive] [Directory]  -  Replaces the mapped virtual drive with the directory
ECHO mapdrive /L                   -  List mounted virtual drives
ECHO mapdrive /F                   -  Displays next availale drive letter
ECHO mapdrive                      -  Displays this help (also /?, /H)
ECHO SWITCHES:
ECHO /P                            -  Pause after any of the above commands
GOTO Finish

:List
ECHO Mapped Virtual Drives:
subst
GOTO Finish

:Free
for %%a in (Z Y X W V U T S R Q P O N M L K J I H G F E D C) do CD %%a: 1>> nul 2>&1 & if errorlevel 1 set freedrive=%%a:
ECHO First Free Drive: %freedrive%
ECHO Note: Mapdrive is set to start at K:
GOTO Finish

:Map
ECHO Finding First Available Drive...

REM Search All Drive Letters: for %%a in (Z Y X W V U T S R Q P O N M L K J I H G F E D C) do CD %%a: 1>> nul 2>&1 & if errorlevel 1 set freedrive=%%a:
REM Stop at K: 
for %%a in (Z Y X W V U T S R Q P O N M L K) do CD %%a: 1>> nul 2>&1 & if errorlevel 1 set freedrive=%%a:
ECHO Found: %freedrive%

ECHO Checking Existence of %1
IF NOT EXIST %1 (
	ECHO Error: Directory Not Found!
	GOTO Finish
	)

ECHO Mapping %1 to %freedrive%...
subst %freedrive% %1
GOTO Finish

:Replace
ECHO Replacing virtal drive %~d1 with %2
subst %~d1 /D
subst %~d1 %2
GOTO Finish

:Disconnect
ECHO Dismounting mapped drive %~d1...
subst %~d1 /D
GOTO Finish

:Finish
REM ECHO Finished.

IF /I "%1"=="/P" GOTO Wait
IF /I "%2"=="/P" GOTO Wait
IF /I "%3"=="/P" GOTO Wait
GOTO End

:Wait
PAUSE

:End