REM Start

ECHO off

CD "Default Installs"
 
IF EXIST "%SystemDrive%\Program Files (x86)\Git\Git Bash.vbs" (
	Echo 64 bit Machine with Git Detected
	CD "Default Install (Git, x64) (64 bit)"
) ELSE (
	IF EXIST "%SystemDrive%\Program Files\Git\Git Bash.vbs" (
		Echo 32 bit Machine with Git Detected
		CD "Default Install (Git, x64) (64 bit)"
	) ELSE (
		ECHO Git not Detected
		CD "Default Install (No Git)"
	)
)

rundll32.exe setupapi,InstallHinfSection DefaultInstall 132 .\ContextMenuTools.inf

CD ..

CD ..

CD "Custom Installs"

CD "Command Prompt Here"

rundll32.exe setupapi,InstallHinfSection DefaultInstall 132 .\CommandPromptHere.inf

CD ..

CD "Command Prompt Here (Administrator)"

rundll32.exe setupapi,InstallHinfSection DefaultInstall 132 .\CommandPromptHereAdministrator.inf

CD ..

CD "Start PowerShell Here (Administrator)"

rundll32.exe setupapi,InstallHinfSection DefaultInstall 132 .\StartPowerShellHereAdministrator.inf

REM End