                              /##########################\
                              |### Context Menu Tools ###|
                              \##########################/

                                     Version: 1.0
                                  Author: Eric Menze
                               Windows 7, Windows Vista

These tools add functionality to your context menu.  They have easy uninstall entries in the Programs Control Panel option.  They have were written for Windows 7 / Vista, but will probably work in XP as well (although you may need to install PowerShell manually).  Setup explains the multitude of install options, or you can dive right in with the Default Install or SuperUser Install.

If you have any bugs to report or features to request, please do so either at GitHub (https://github.com/Ehryk/ContextMenuTools) or my email (Ehryk42@gmail.com).  I'd be interested in other commands that would be helpful in the context menu.

                                   ===================
                                   ===> The Story <===
                                   ===================

After using PowerShell and Git Bash a lot, I found it irritating to start in my home directory each time I opened a new prompt.  Microsoft published their Elevation Power Toys, which would launch PowerShell and the command prompt from the context menus of drives and directories, but I found it lacking in a few features.  What I wanted most was to right click the backgrounds of directories and drives, Git support, and other nitpicky details.  This gave birth to this project.

I used the basic structure of the .INF files to write my own, with custom icons and more features.  I alter the Administrator prompts to reflect the elevated commands, customize the PowerShell prompts, set default colors, and most importantly add the ability to right click anywhere in a directory or drive.

                                  ====================
                                  ===> PowerShell <===
                                  ====================

Start PowerShell Here
Default Key: p
- This will add the "Start PowerShell Here" context menu entry with a blue icon to Directories, Drives, and Directory Backgrounds.  It is available in both the regular and extended context menu.  The Command prompt is set to:
(User[Green]) (Location)>

Start PowerShell Here (Extended)
Default Key: p
- Adds "Start PowerShell Here" to the extended context menu only (Shift + Right Click). Command Prompt:
(User[Green]) (Location)>

Start PowerShell Here (Administrator)
Default Key: p
- This will add the "Start PowerShell Here (Administrator)" context menu entry with a red icon to Directories, Drives, and Directory Backgrounds.  It is only available in the extended context menu.  "Administrator: " is added to the window title, and the command prompt becomes:
Administrator[Red] (Location)>

Start PowerShell Here (Administrator) (Extended)
Default Key: p
- Adds "Start PowerShell Here (Administrator)" to the extended context menu only (Shift + Right Click). "Administrator: " is added to the window title.  Command Prompt:
Administrator[Red] (Location)>

Keep PowerShell Blue.reg
KeepPowerShellBlue.inf
-When PowerShell is launched directly from the .exe, it does not have the custom blue colors and other options.  These values are saved with the PowerShell.lnk that is usually called.  These registry entries keep PowerShell the way the link makes it, no matter what calls it.

Keep Command Window Scrollable.reg
KeepCommandWindowScrollable.inf
-When cmd.exe is launched directly from the .exe, it is not scrollable.  These values are saved with the cmd.lnk that is usually called.  These registry entries keep cmd.exe the way the link makes it, no matter what calls it.

                                ========================
                                ===> Command Prompt <===
                                ========================

Command Prompt Here
Default Key: c
- By default Windows gives you "Open Command Window Here" on the extended context menu only (shift + right click) to Directories, Drives, and Directory Backgrounds.  This adds a "Command Prompt Here" item with an icon to the normal (and extended) menu entry.

Command Prompt Here (Extended)
Default Key: c
- This replaces the Windows extended menu item with "Command Prompt Here" with an icon to Directories, Drives, and Directory Backgrounds.  It returns the default when it is uninstalled.

Command Prompt Here (Administrator)
Default Key: c
- This adds "Command Prompt Here (Administrator)" to the context menu.  The foreground text is red to distinguish it from normal command prompts.

Command Prompt Here (Administrator) (Extended)
Default Key: c
- This adds "Command Prompt Here (Administrator)" to the extended context menu only.  The foreground text is red to distinguish it from normal command prompts.

                                   ==================
                                   ===> Git Bash <===
                                   ==================

Git Bash Here (x64)
Default Key: g
- This will add the "Git Bash Here" context menu entry with an icon to Directories, Drives, and Directory Backgrounds.  It will only work for the default install location for 64 bit machines (C:\Program Files(x86)\Git\Git Bash.vbs).

Git Bash Here (x86)
Default Key: g
- This will add the "Git Bash Here" context menu entry with an icon to Directories, Drives, and Directory Backgrounds.  It will only work for the default install location for 32 bit machines (C:\Program Files\Git\Git Bash.vbs).

                                 ======================
                                 ===> Open With... <===
                                 ======================

Always Show Open With
Default Key: e
- Windows likes to pick and choose based on the file type when to give you the Open With... context menu entry.  This forces the entry to be present no matter what file type is right clicked, however this causes a dual "Open With..." entry where windows would normally show it.