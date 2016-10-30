@echo off

set "DevKitFolder=%~1"
set "DevKitName=%~n1.devkit"
set "DevKitProductsFolder=%DevKitFolder%\products\windows.msbuild.x86.v140"
set "DevKit3rdPartySoftwareDir=%USERPROFILE%\Software

set "DevKitBoostDir=%DevKit3rdPartySoftwareDir%\boost\boost-1.61.0"
set "BOOST_ROOT=%DevKitBoostDir%\src"
set "BOOST_LIBRARYDIR=%DevKitBoostDir%\targets\lib32-msvc-14.0"

if not exist "%DevKitProductsFolder%" mkdir "%DevKitProductsFolder%"

cd "%DevKitProductsFolder%"

"C:\Program Files\CMake\bin\cmake.exe" ..\.. -G "Visual Studio 14 2015"

if exist "%DevKitProductsSolutionPath%" start "%DevKitName%" "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe" "%DevKitName.sln%"





 