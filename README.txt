			      /##########################\
			      |### Context Menu Tools ###|
			      \##########################/

These tools add functionality to your context menu.  They all have easy uninstall entries in the Programs Control Panel option.  They are written for Windows 7, although they should work fine in Vista as well.

If you find any problems, or would like to request more options, email me at: Ehryk42@gmail.com  

				  ====================
				  ===> PowerShell <===
				  ====================

Start PowerShell Here
Default Key: p
- This will add the "Start PowerShell Here" context menu entry with a blue icon to Directories, Drives, and Directory Backgrounds.  It is available in both the regular and extended context menu.

Start PowerShell Here (Administrator)
Default Key: p
- This will add the "Start PowerShell Here (Administrator)" context menu entry with a red icon to Directories, Drives, and Directory Backgrounds.  It is only available in the extended context menu.

Keep PowerShell Blue.reg
-When PowerShell is launched directly from the .exe, it does not have the custom blue colors and other options.  These values are saved with the PowerShell.lnk that is usually called.  These registry entries keep PowerShell the way the link makes it, no matter what calls it.

				========================
				===> Command Prompt <===
				========================

Command Prompt Here
Default Key: c
- By default Windows gives you "Open Command Window Here" on the extended context menu only (shift + right click) to Directories, Drives, and Directory Backgrounds.  This adds a "Command Prompt Here" item with an icon to the normal (and extended) menu entry, but leaves the default so there is a duplicate in the extended menu.

Command Prompt Here (Extended)
Default Key: c
- This replaces the Windows extended menu item with "Command Prompt Here" with an icon to Directories, Drives, and Directory Backgrounds.  It returns the default when it is uninstalled.

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