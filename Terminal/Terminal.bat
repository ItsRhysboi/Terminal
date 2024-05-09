@echo off
title Terminal - Made by ItsRhysBoi

set /p default_color=<Terminal-data\settings\default_color.ter
color %default_color%

cls
goto terminal

:color
cls
Echo.
Echo ======================================================================================================================
Echo.
Echo Blue (1)
Echo Green (2)
Echo Aqua (3)
Echo Red (4)
Echo Purple (5)
Echo Yellow (6)
Echo White (7)
Echo Grey (8)
Echo.
Echo Light blue (9)
Echo Light Green (a)
Echo Light Aqua (b)
Echo Light Red (c)
Echo Light Purple (d)
Echo Light Yellow (e)
Echo.
Echo Bright White (f)
Echo.
Echo ======================================================================================================================
Echo.
set /p col="Enter a color letter: "
Echo %col% > Terminal-data\settings\default_color.ter
color %col%
goto terminal-options

:Help
cls
Echo.
Echo ======================================================================================================================
Echo.
Echo To go to a certain function, type the letter(s) or number located in the brackets "()"
Echo Commands may be case sensitive so check if they are capital letters or not
Echo Ignore words inside of "[]"
Echo.
Echo ======================================================================================================================
Echo.
pause
goto terminal

:: Main program where user selects their first choices
:Terminal
cls
Echo.
Echo ======================================================================================================================
echo.
echo Terminal-functions:
echo -------------------
echo.
Echo    Windows Tools (1)
Echo    Windows Tools [Admin] (2)
Echo    Troll Scripts (3)
Echo.
echo    Terminal Options (t)
Echo    Help (h)
Echo    Restart (r)
Echo    Exit (e)
echo.
Echo.
echo External links:
Echo ---------------
echo.
Echo    View Terminal Github (g)
Echo    View Rhys' Vault (rv)
Echo    View Rhys' Vault Test (rvt)
Echo.
Echo ======================================================================================================================
set /p ter="Enter the number/letter(s) that go with the function: "
if "%ter%"=="1" goto Tools
if "%ter%"=="2" goto ToolsAdmin
if "%ter%"=="t" goto Terminal-options
if "%ter%"=="3" goto troll
if "%ter%"=="rv" start "" "https://rhysvault.netlify.app/" && goto Terminal
if "%ter%"=="rvt" start "" "https://rhysvault-test.netlify.app/" && goto Terminal
if "%ter%"=="h" goto help
if "%ter%"=="r" goto Restart
if "%ter%"=="e" exit
if "%ter%"=="g" start "" "https://github.com/ItsRhysboi/Terminal" && goto Terminal
echo Invalid option
pause
goto Terminal

:: Restarts the program by opening a new window and closing the current one
:Restart
start "" "terminal.bat"
exit

:Terminal-options
cls
Echo.
Echo ======================================================================================================================
Echo.
Echo    Reinstall Terminal (1)
Echo    Change Color (2)
Echo.
Echo    Exit (e)
Echo.
Echo ======================================================================================================================
Echo.

set /p teo="Enter the number/letter(s) that go with the function: "
if "%teo%"=="1" goto Reinstall
if "%teo%"=="2" goto color 
if "%teo%"=="e" goto terminal
Echo Invalid Option
pause
goto Terminal-Options

:Reinstall
pause
goto Terminal-options

:ToolsAdmin
cls
Echo.
Echo ======================================================================================================================
Echo.
Echo    DiskPart (1)
Echo.
Echo    Exit (e)
Echo.
Echo ======================================================================================================================
Echo.

set /p ta=
if "%ta%"=="1" goto diskpart
if "%ta%"=="2" goto Terminal

echo Invalid option
pause
goto ToolsAdmin

:diskpart
diskpart
pause
goto ToolsAdmin:

:: Handles the function for the windows tools
:Tools
cls
Echo.
Echo ======================================================================================================================
Echo.
Echo    Find Windows Key (1)
Echo    Find Windows Key with VBScript (2)
Echo    Get battery status report (Laptop only) (3)
Echo    Display Ip information (4)
Echo    Display All Ip Information (5)
Echo    List Tasks + Kill them (6)
Echo    Kill Tasks (7)
Echo    Check the user you are on (8)
Echo    System Information (9)
Echo    Check Disk Space (10)
Echo.
Echo    Exit (e)
echo.
Echo ======================================================================================================================
set /p tol="Enter the number/letter(s) that go with the function: "
if "%tol%"=="1" goto winkey
if "%tol%"=="2" goto winkeysuccess
if "%tol%"=="3" goto batterystatus
if "%tol%"=="4" goto ip
if "%tol%"=="5" goto ipa
if "%tol%"=="6" goto Task
if "%tol%"=="7" goto taskkill
if "%tol%"=="8" goto username
if "%tol%"=="9" goto SystemInfo
if "%tol%"=="10" goto CheckDiskSpace

if "%tol%"=="e" goto Terminal
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

:username
cls
whoami /all
pause
goto tools

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

:ip
cls
ipconfig
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
pause
goto Tools

:: Handles the Function of giving a battery report of the current users laptop if they are on one
:batterystatus
:: Prompt user to enter drive letter and then call the drive letter while saying
set /p drive="Enter Drive letter: "
:: Calls drive letter
powercfg /batteryreport /output %drive%:\BatteryReport.html
pause
goto tools

:: Enter the user into the troll section of the terminal
:troll
cls
Echo.
Echo ======================================================================================================================
Echo.
Echo    Matrix (1)
Echo    Dir (2)
Echo    VBS Msgbox (3)
Echo    Windows Fork B (4)
Echo.
Echo    Exit (e)
echo.
Echo ======================================================================================================================
set /p tol="Enter the number/letter(s) that go with the function: "
if "%tol%"=="1" goto matrix
if "%tol%"=="2" goto dir
if "%tol%"=="3" goto wl
if "%tol%"=="4" goto fork
if "%tol%"=="e" goto terminal
echo Invalid option
pause
goto troll

:wl
start Terminal-Data\Scripts\Wontleave\main.vbs
exit

:dir
start Terminal-Data\Scripts\Dir\Dir.bat
exit

:matrix
start Terminal-Data\Scripts\Matrix\Matrix.bat
exit

:fork
start Terminal-Data\Scripts\Fork\Fork.bat
exit
