@echo off

rem %~1: Platform: [x86, x64, arm-32, arm-64]
rem %~2: Toolset: [v120, v140, ...]
 
rem Convention 1: 
set "DevKit3rdPartySoftwareDir=%USERPROFILE%\Software\3rd-party"

rem Convention 2: one level up is "source" containing all repos, two levels up is nothing and then "software"
if not exist "%DevKit3rdPartySoftwareDir%" set "DevKit3rdPartySoftwareDir=%~p0\..\..\Software\3rd-party"

rem Convention 3: current drive\Software\3rd-party
if not exist "%DevKit3rdPartySoftwareDir%" set "DevKit3rdPartySoftwareDir=%~d0\Software\3rd-party"
	
rem add your own...

rem ==============================
rem The product platform will need to be passed from outside. Currently it's hard wired.
rem ==============================

rem Boost libraries:
set "DevKitBoostDir=%DevKit3rdPartySoftwareDir%\boost\boost-1.61.0"
set "BOOST_ROOT=%DevKitBoostDir%\src"
set "BOOST_LIBRARYDIR=%DevKitBoostDir%\products\windows\lib\lib-%~1-%~2"

rem OpenCV:

rem Cassablanca:

rem CppRx:

rem Graphics libraries:
