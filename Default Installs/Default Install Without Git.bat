@ECHO Off

ECHO Start
 
CD "Default Install (No Git)"

ECHO Installing...

rundll32.exe setupapi,InstallHinfSection DefaultInstall 132 .\ContextMenuTools.inf
 
ECHO End