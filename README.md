# devkit-project-helpers
Windows and Visual Studio helper scripts to set up an environment for projects configured by CMake.

# Conventions

The "build-utilities" repo is checked out into the folder where we manage our sources. The folder shall be called "Sources". Example: 
    <some-path>\Sources\build-utilities
We manage and configure the 3rd party dependecies as follows:  
    <some-path>\Sources\..\Software\3rd-party\    
The convention is encoded in win.settings-3d-party.bat.

# Usage 

1. Checkout the repo
2. Run "install-scripts-to-source-folder.bat"
2. Drop the devkit folder onto either of the sripts "win-settings-run-*" scripts. 