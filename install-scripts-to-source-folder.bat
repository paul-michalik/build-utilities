@echo off

setlocal

set "DevKitBuildUtilsDir=%~dp0"
set "DevKitBuildUtilsDir=%DevKitBuildUtilsDir:~0,-1%"
set "DevKitSourceDir=%DevKitBuildUtilsDir%\.."

rem set DevKit
robocopy "%DevkitBuildUtilsDir%" "%DevkitSourceDir%" win.settings-*.bat
robocopy "%DevkitBuildUtilsDir%\win.settings" "%DevkitSourceDir%\win.settings" win.settings-*.bat
rem dir "%DevKitSourceDir%\win.settings-*.bat" /b

endlocal