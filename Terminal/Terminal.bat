@echo off
title Terminal - Made by ItsRhysBoi
color a
cls

::Main program where user selects their choices
:Terminal
cls
Echo.
Echo ======================================================================================================================
Echo.
Echo    Windows Tools (1)
echo.
Echo    View Rhys' Vault (rv)
Echo    Test Vault (rvt)
Echo    Restart (r)
Echo    Exit (e)
Echo.
Echo    Enter the number/letter(s) of the part you want to goto:
set /p ter=     
if "%ter%"=="1" goto Tools
if "%ter%"=="rv" start "" "https://rhysvault.netlify.app/" && goto Terminal
if "%ter%"=="rvt" start "" "https://rhysvault-test.netlify.app/" && goto Terminal
if "%ter%"=="r" goto Restart
if "%ter%"=="e" exit
echo Invalid option
pause
goto Terminal

::Handles the function for the windows tools
:Tools
cls
Echo.
Echo ======================================================================================================================
Echo.
Echo    Find Windows Key (1)
Echo    Find Windows Key with VBScript (2)
Echo.
Echo    Exit (back to main menu with e)
echo.
Echo    Enter the number/letter(s) of the part you want to goto:
set /p tol=
if "%tol%"=="1" goto winkey
if "%tol%"=="2" goto winkeysuccess
if "%tol%"=="e" goto Terminal
echo Invalid option
pause
goto Tools

::Handles Checking for Windows Product Key and prompting user with downloading a VBScript version
:winkey
cls
wmic path softwarelicensingservice get OA3xOriginalProductKey
Echo If product key does not show, try running the VBScript.
Echo Run VBScript? (y/n)
set /p wky=
if /I "%wky%"=="y" goto winkeysuccess
if /I "%wky%"=="n" goto Tools
echo Invalid option
pause
goto winkey

:winkeysuccess
::Check if the directory is there or not
IF NOT EXIST "Terminal-Data\Scripts\WindowsProductKeyFinder\finder.vbs" (
    echo Error: Location not found, Try reinstalling the program, Aborting
    pause
    goto Terminal
)
start Terminal-Data\Scripts\WindowsProductKeyFinder\finder.vbs
pause
goto Tools

::Restarts the program by opening a new window and closing the current one
:Restart
start "" "terminal.bat"
exit
