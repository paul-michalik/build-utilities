@echo off

rem Catch input and set up the environment
set "DevKitFolder=%~1"
set "DevKitName=%~n1.devkit"
set "DevKitProductsFolder=%DevKitFolder%\products\windows.msbuild.x86.v140"

rem Set up the environment for 3rd party libs
call "%~dp0win.settings-3d-party.bat"

rem Products folder:
if not exist "%DevKitProductsFolder%" mkdir "%DevKitProductsFolder%"
cd "%DevKitProductsFolder%"