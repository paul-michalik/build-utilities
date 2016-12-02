@echo off

rem Catch input and set up the environment. 
rem Precondition: must have installed the scripts
rem Postcondition: "products" folder created or error 
call "%~dp0win.settings\win.settings-windows.msbuild.x64.v140.bat" %*
 
start "cmake-gui" "C:\Program Files\CMake\bin\cmake-gui.exe" ..\..