@echo off

set "DevKitFolder=%~1"
set "DevKitName=%~n1.devkit"
set "DevKitProductsFolder=%DevKitFolder%\products\windows.msbuild.x86.v140"

set "BOOST_ROOT=E:/Software/ext-libs/boost/boost_1_61_0-src"
set "BOOST_LIBRARYDIR=E:/Software/ext-libs/boost/boost_1_61_0-bin/lib-x86-v140"

if not exist "%DevKitProductsFolder%" mkdir "%DevKitProductsFolder%"

cd "%DevKitProductsFolder%"
 
start "cmake-gui" "C:\Program Files\CMake\bin\cmake-gui.exe" ..\..