REM Start

ECHO off
 
CD "Other Tools"

rundll32.exe setupapi,InstallHinfSection DefaultInstall 132 .\UninstallAll.inf

REM Give back any Git Entries they may have had

CD "Return Default Git Context Menu Entries"

IF EXIST "%SystemDrive%\Program Files (x86)\Git\Git Bash.vbs" ( 
		ECHO 64 bit Bash
		GOTO B64
	)
)

IF EXIST "%SystemDrive%\Program Files\Git\Git Bash.vbs" ( 
		ECHO 32 bit Bash
		GOTO B32
	)
)

ECHO Git Not Installed
EXIT 0

:B64
rundll32.exe setupapi,InstallHinfSection DefaultInstall 132 %CD%\Bash(x64).inf
EXIT 0

:B32
rundll32.exe setupapi,InstallHinfSection DefaultInstall 132 %CD%\Bash(x86).inf
EXIT 0

REM End
