Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")

Const TemporaryFolder = 2
linkfile = fso.BuildPath(fso.GetSpecialFolder(TemporaryFolder), "CygWin.lnk")
cygdir = fso.GetParentFolderName(WScript.ScriptFullName)

' Dynamically create a shortcut with the current directory as the working directory.
Set link = shell.CreateShortcut(linkfile)
'link.TargetPath = fso.BuildPath(cygdir, "bin\mintty.exe")
'link.Arguments = "--class ""cygwin"" --title ""Cygwin64 Terminal"" --exec "
link.TargetPath = fso.BuildPath(cygdir, "bin\bash.exe")
link.Arguments = "--login -i "
link.Description = "CygWin 64 Terminal"
link.Hotkey = "CTRL+ALT+C"
link.IconLocation = fso.BuildPath(cygdir, "Cygwin.ico")
If WScript.Arguments.Length > 0 Then link.WorkingDirectory = WScript.Arguments(0)
link.Save

Set app = CreateObject("Shell.Application")
app.ShellExecute linkfile
