set CURRENT_PATH=%CD%

set ZA=%CURRENT_PATH%\7za.exe
set ZSD=%CURRENT_PATH%\7zSD.sfx

set IVSS_PATH=%CURRENT_PATH%\..\ivss
set BIN_NAME=ivss_setup-win.exe

"%ZA%" a setup.7z setup.bat "%IVSS_PATH%"
copy /y /b "%ZSD%" + config.txt + setup.7z "%BIN_NAME%"
move /y "%BIN_NAME%" ..\
del setup.7z