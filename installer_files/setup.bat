xcopy /Y /E /H /C /I "ivss\" "%APPDATA%\ivss\"
del "%USERPROFILE%\Desktop\IVSS.lnk"

@echo off
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%USERPROFILE%\Desktop\IVSS.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "%APPDATA%\ivss\IVSS.exe" >> CreateShortcut.vbs
echo oLink.WorkingDirectory = "%APPDATA%\ivss\" >> CreateShortcut.vbs
echo oLink.Description = "IVSS" >> CreateShortcut.vbs
echo oLink.IconLocation = "%APPDATA%\ivss\icons\logo_icon.ico" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs