@ECHO Off

ECHO Start
 
CD "Other Tools"

ECHO Uninstalling...

rundll32.exe syssetup,SetupInfObjectInstallAction DefaultInstall 132 .\UninstallAll.inf

ECHO Attempting to return any Git Entries they may have had

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
GOTO End

:B64
rundll32.exe setupapi,InstallHinfSection DefaultInstall 132 %CD%\Bash(x64).inf
GOTO End

:B32
rundll32.exe setupapi,InstallHinfSection DefaultInstall 132 %CD%\Bash(x86).inf
GOTO End

:End
ECHO End
