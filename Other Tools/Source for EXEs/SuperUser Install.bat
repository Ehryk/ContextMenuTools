REM Start

ECHO off

CD "Default Installs"
 
IF EXIST "%SystemDrive%\Program Files (x86)\Git\Git Bash.vbs" (
	Echo 64 bit Machine with Git Detected
	CD "SuperUser Install (Git, x64) (64 bit)"
) ELSE (
	IF EXIST "%SystemDrive%\Program Files\Git\Git Bash.vbs" (
		Echo 32 bit Machine with Git Detected
		CD "SuperUser Install (Git, x64) (64 bit)"
	) ELSE (
		ECHO Git not Detected
		CD "SuperUser Install (No Git)"
	)
)

rundll32.exe setupapi,InstallHinfSection DefaultInstall 132 .\ContextMenuTools.inf

REM End