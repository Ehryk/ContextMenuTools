@ECHO Off

ECHO Start

CD "Default Installs"
 
IF EXIST "%SystemDrive%\Program Files (x86)\Git\Git Bash.vbs" (
	ECHO 64 bit Machine with Git Detected
	CD "SuperUser Install (Git, x64) (64 bit)"
) ELSE (
	IF EXIST "%SystemDrive%\Program Files\Git\Git Bash.vbs" (
		ECHO 32 bit Machine with Git Detected
		CD "SuperUser Install (Git, x64) (64 bit)"
	) ELSE (
		ECHO Git not Detected
		CD "SuperUser Install (No Git)"
	)
)

ECHO Installing...

rundll32.exe setupapi,InstallHinfSection DefaultInstall 132 .\ContextMenuTools.inf

ECHO End