@echo off

set "DevKitFolder=%~1"
set "DevKitName=%~n1.devkit"
set "DevKitProductsFolder=%DevKitFolder%\products\windows.msbuild.x86.v140"
set "DevKitProductsSolutionPath=%DevKitProductsFolder%\%DevKitName%.sln"

set "BOOST_ROOT=E:/Software/ext-libs/boost/boost_1_61_0-src"
set "BOOST_LIBRARYDIR=E:/Software/ext-libs/boost/boost_1_61_0-bin/lib-x86-v140"

if not exist "%DevKitProductsFolder%" mkdir "%DevKitProductsFolder%"

cd "%DevKitProductsFolder%"

"C:\Program Files\CMake\bin\cmake.exe" ..\.. -G "Visual Studio 14 2015"

if exist "%DevKitProductsSolutionPath%" start "%DevKitName%" "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe" "%DevKitProductsSolutionPath%"





 