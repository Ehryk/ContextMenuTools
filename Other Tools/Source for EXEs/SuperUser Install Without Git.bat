REM Start

ECHO off
 
CD "SuperUser Install (No Git)"

rundll32.exe setupapi,InstallHinfSection DefaultInstall 132 .\ContextMenuTools.inf
 
REM End