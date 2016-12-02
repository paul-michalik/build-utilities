@echo off

rem Catch input and set up the environment. 
rem Precondition: must have installed the scripts
rem Postcondition: "products" folder created or error 
call "%~dp0win.settings\win.settings-windows.msbuild.x64.v140.bat" %*

if errorlevel 1 exit /b %errorlevel%

call "C:\Program Files\CMake\bin\cmake.exe" ..\.. -G "Visual Studio 14 2015 Win64"

if exist "%DevKitName%.sln" (
	call start "%DevKitName%" "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe" "%DevKitName%.sln"
) else (
	echo %DevKitName%.sln does not exist in %CD%
	set DevKit
	cmd /k 
)


 