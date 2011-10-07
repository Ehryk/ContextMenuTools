REM Start

ECHO off

SET RegQry=HKLM\Hardware\Description\System\CentralProcessor\0
 
reg.exe Query %RegQry% > checkOS.txt
 
FIND /i "x86" < CheckOS.txt > StringCheck.txt

SET is64 = %ERRORLEVEL%

DEL CheckOS.txt

DEL StringCheck.txt
 
IF is64 == 0 (
	Echo 32 bit Machine Detected
	CD "SuperUser Install (Git, x86) (32 bit)"
) ELSE (
	Echo 64 bit Machine Detected
	CD "SuperUser Install (Git, x64) (64 bit)"
)

rundll32.exe setupapi,InstallHinfSection DefaultInstall 132 .\ContextMenuTools.inf
 
REM End