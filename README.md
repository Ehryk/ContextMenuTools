# Context Menu Tools

 - Version: 1.2
 - Author: Eric Menze
 - Windows 8, Windows 7, Windows Vista, Windows XP

These tools add functionality to your context menu.  They have easy uninstall entries in the Programs Control Panel option.  They have were written for Windows 8 / 7 / Vista, but works in XP as well (you may need to install PowerShell manually).  Setup explains the multitude of install options, or you can dive right in with the Default Install or SuperUser Install. 

![Default Install Sections](https://raw2.github.com/Ehryk/ContextMenuTools/master/Images/DefaultInstall.png)

###Installation

You can use the Setup.hta, Default Install.exe, Superuser Install.exe, but the best way is to open the Default Installs folder, select the best matching option, open that subfolder, right click the .inf in that folder and choose 'Install'.

**NOTE: The installs must sometimes be run as Administrator; right click the application and select "Run as Administrator" from the context menu if they menu entries don't appear.**

If you have any bugs to report or features to request, please do so either at GitHub (https://github.com/Ehryk/ContextMenuTools) or my email (Ehryk42@gmail.com).  I'd be interested in other commands that would be helpful in the context menu.

### The Story

After using PowerShell and Git Bash a lot, I found it irritating to start in my home directory each time I opened a new prompt.  Microsoft published their Elevation Power Toys, which would launch PowerShell and the command prompt from the context menus of drives and directories, but I found it lacking in a few features.  What I wanted most was to right click the backgrounds of directories and drives, Git support, and other nitpicky details.  This gave birth to this project.

I used the basic structure of the .INF files to write my own, with custom icons and more features.  I alter the Administrator prompts to reflect the elevated commands, customize the PowerShell prompts, set default colors, and most importantly add the ability to right click anywhere in a directory or drive.

### Default Install
								  
This should be your initial entry point: Start here. You can then modify the install at anytime by just installing a different one, no need to uninstall. To remove them, you can use the UninstallAll.exe or remove the entry in the Programs section of the Control Panel.

![Default Example](https://raw2.github.com/Ehryk/ContextMenuTools/master/Images/Default.png)

Default Installs add the following to the regular Context Menu (right click):
 - Command Prompt Here - Shortcut Key: c, Runs cmd.
 - Git Bash Here - Shortcut Key: g, Opens a Git Bash. Only added if Git is installed in the default location.
 - Start Powershell Here - Shortcut Key: p, Runs PowerShell.

And the following to the Extended Context Menu (shift+right click):
 - Command Prompt Here - Shortcut Key: c, Runs cmd.
 - Command Prompt Here (Administrator) - Shortcut Key: c, Runs cmd as an Administrator.
 - Git Bash Here - Shortcut Key: g, Opens a Git Bash. Only added if Git is installed in the default location.
 - Start Powershell Here - Shortcut Key: p, Runs PowerShell.
 - Start Powershell Here (Administrator) - Shortcut Key: p, Runs PowerShell as an Administrator.

### SuperUser Install

Superuser Installs add all of the following options, including the Administrative options, to both the regular Context Menu (right click) and the Extended Context Menu (shift+right click):

![SuperUser Example](https://raw2.github.com/Ehryk/ContextMenuTools/master/Images/SuperUser.png)

 - Command Prompt Here - Shortcut Key: c, Runs cmd.
 - Command Prompt Here (Administrator) - Shortcut Key: c, Runs cmd as an Administrator.
 - Git Bash Here - Shortcut Key: g, Opens a Git Bash. Only added if Git is installed in the default location.
 - Start Powershell Here - Shortcut Key: p, Runs PowerShell.
 - Start Powershell Here (Administrator) - Shortcut Key: p, Runs PowerShell as an Administrator.

### PowerShell

##### Start PowerShell Here
 - Shortcut Key: p
This will add the "Start PowerShell Here" context menu entry with a blue icon to Directories, Drives, and Directory Backgrounds.  It is available in both the regular and extended context menu.  The Command prompt is set to:
(User[Green]) (Location)>

##### Start PowerShell Here (Extended)
 - Shortcut Key: p
Adds "Start PowerShell Here" to the extended context menu only (Shift + Right Click). Command Prompt:
(User[Green]) (Location)>

##### Start PowerShell Here (Administrator)
 - Shortcut Key: p
This will add the "Start PowerShell Here (Administrator)" context menu entry with a red icon to Directories, Drives, and Directory Backgrounds.  It is only available in the extended context menu.  "Administrator: " is added to the window title, and the command prompt becomes:
Administrator[Red] (Location)>

##### Start PowerShell Here (Administrator) (Extended)
 - Shortcut Key: p
Adds "Start PowerShell Here (Administrator)" to the extended context menu only (Shift + Right Click). "Administrator: " is added to the window title.  Command Prompt:
Administrator[Red] (Location)>

##### Keep PowerShell Blue.reg
##### KeepPowerShellBlue.inf
When PowerShell is launched directly from the .exe, it does not have the custom blue colors and other options.  These values are saved with the PowerShell.lnk that is usually called.  These registry entries keep PowerShell the way the link makes it, no matter what calls it.

![Keep PowerShell Blue](https://raw2.github.com/Ehryk/ContextMenuTools/master/Images/PowerShellDefault.png)

##### Keep Command Window Scrollable.reg
##### KeepCommandWindowScrollable.inf
When cmd.exe is launched directly from the .exe, it is not scrollable.  These values are saved with the cmd.lnk that is usually called.  These registry entries keep cmd.exe the way the link makes it, no matter what calls it.

### Command Prompts

##### Command Prompt Here
 - Shortcut Key: c
By default Windows gives you "Open Command Window Here" on the extended context menu only (shift + right click) to Directories, Drives, and Directory Backgrounds.  This adds a "Command Prompt Here" item with an icon to the normal (and extended) menu entry.

##### Command Prompt Here (Extended)
 - Shortcut Key: c
This replaces the Windows extended menu item with "Command Prompt Here" with an icon to Directories, Drives, and Directory Backgrounds.  It returns the default when it is uninstalled.

##### Command Prompt Here (Administrator)
 - Shortcut Key: c
This adds "Command Prompt Here (Administrator)" to the context menu.  The foreground text is red to distinguish it from normal command prompts.

##### Command Prompt Here (Administrator) (Extended)
 - Shortcut Key: c
This adds "Command Prompt Here (Administrator)" to the extended context menu only.  The foreground text is red to distinguish it from normal command prompts.

**Note: as an added feature, administrative command prompts are opened with red text as a reminder of their additional access level.**

![Administrator Command Prompt](https://raw2.github.com/Ehryk/ContextMenuTools/master/Images/AdministratorCommandPrompt.png)

### Git Bash

##### Git Bash Here (x64)
 - Shortcut Key: g
This will add the "Git Bash Here" context menu entry with an icon to Directories, Drives, and Directory backgrounds.  It will only work for the default install location for 64 bit machines (C:\Program Files(x86)\Git\Git Bash.vbs).

##### Git Bash Here (x86)
 - Shortcut Key: g
This will add the "Git Bash Here" context menu entry with an icon to Directories, Drives, and Directory Backgrounds.  It will only work for the default install location for 32 bit machines (C:\Program Files\Git\Git Bash.vbs).

### Cygwin

##### Start Cygwin Here
 - Shortcut Key: y
 This will add the "Start Cygwin Here" context menu entry with an icon to Directories, Drives, and Directory backgrounds. It will only work for the default install location (C:\Cygwin), however a quick edit of the .inf file before installation will let you customize the installation path.

##### Start Cygwin Here (Extended)
 - Shortcut Key: y
Same as Cygwin Here, but only in the extended context menu (shift + right click).

##### Start Cygwin Here (Administrator)
 - Shortcut Key: y
This will add the "Start Cygwin Here (Administrator)" context menu entry with an icon to Directories, Drives, and Directory backgrounds. It will only work for the default install location (C:\Cygwin), however a quick edit of the .inf file before installation will let you customize the installation path.

##### Start Cygwin Here (Administrator) (Extended)
 - Shortcut Key: y
Same as Cygwin Here (Administrator), but only in the extended context menu (shift + right click).

### Network and Local Drives

##### Map Network Drive Here
 - Shortcut Key: n
 This will add a shorcut to map a network drive to the first available drive letter, starting at Z: and working backward.

##### Map Local Drive Here
 - Shortcut Key: l
 This will add a shorcut to map a local folder as a drive to the first available drive letter, starting at Z: and working backward. This has proved extremely useful when working with extremely long paths from nested directories as the directory can be mapped to a drive letter which restarts the path length limit.

##### Map Local Drive Here - Static
 - Shortcut Key: l
Same as Map Local Drive Here, but with a set drive letter (Available: K:, L:, M:, N:, O:, P:). A quick edit of the .inf file can change them to any other drive letter, and this automatically unmounts any local drives that are on that drive letter first for reuse.

### Open With...

##### Always Show Open With
 - Shortcut Key: e
Windows likes to pick and choose based on the file type when to give you the Open With... context menu entry.  This forces the entry to be present no matter what file type is right clicked, however this causes a dual "Open With..." entry in situations where windows would normally show it, and isn't installed by default.
