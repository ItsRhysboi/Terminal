@echo off
title Terminal - Made by ItsRhysBoi - v1.4

set /p default_color=<Terminal-Data\Settings\User\default_color.ter
color %default_color%

:: Handles the function for the windows tools
:Tools
cls
Echo.
Echo ======================================================================================================================
Echo.
Echo    Find Windows Key (1)
Echo    Find Windows Key with VBScript (2)
Echo    Get battery status report [Laptop only] (3)
Echo    Display Ip Information (4)
Echo    List Tasks + Kill them (5)
Echo    System Information (6)
Echo    Check Disk Space (7)
Echo.
Echo    Exit (e)
echo.
Echo ======================================================================================================================
set /p tol="Enter the number/letter that go with the function above: "
if "%tol%"=="1" goto winkey
if "%tol%"=="2" goto winkeysuccess
if "%tol%"=="3" goto batterystatus
if "%tol%"=="4" goto ipa
if "%tol%"=="5" goto taskkill
if "%tol%"=="6" goto SystemInfo
if "%tol%"=="7" goto CheckDiskSpace

if "%tol%"=="e" call "Terminal.bat"
echo Invalid option
pause
goto Tools

:CheckDiskSpace
cls
echo.
echo Disk Space Information:
echo -----------------------
echo.
wmic logicaldisk get caption,freespace,size,volumename
echo.
pause
goto Tools

:SystemInfo
cls
echo.
echo System Information:
echo -------------------
echo.
systeminfo
echo.
pause
goto Tools

:task
cls
tasklist
goto taskkill
:taskkill
Echo.
set /p task="Enter the task name: "
taskkill /f /im %task% /t
tasklist %task%
pause
goto tools

:ipa
cls
ipconfig /all
pause
goto tool

:: Handles Checking for Windows Product Key and prompting user with downloading a VBScript version
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
:: Check if the directory is there or not
IF NOT EXIST "Terminal-Data\Scripts\WindowsProductKeyFinder\finder.vbs" (
    echo Error: Location not found, Try reinstalling the program, Aborting
    pause
    goto Terminal
)
start Terminal-Data\Scripts\WindowsProductKeyFinder\finder.vbs
goto Tools

:: Handles the Function of giving a battery report of the current users laptop if they are on one
:batterystatus
:: Prompt user to enter drive letter and then call the drive letter while saying
set /p drive="Enter Drive letter: "
:: Calls drive letter
powercfg /batteryreport /output %drive%:\BatteryReport.html
pause
goto tools

setlocal EnableDelayedExpansion

REM Define initial directory
set "currentDir=%CD%"