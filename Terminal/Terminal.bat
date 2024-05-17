@echo off
title Terminal - Made by ItsRhysBoi - v1.2

if not EXIST Terminal-data (
    Echo Terminal-data folder missing.
    Echo Please re install the program from "https://rhysvault-test.netlify.app/the_vault/project_vault/terminal"
    pause
    exit
) else (
    goto main
)

:main
call Terminal-Data\Settings\System\Greet.bat
cd Terminal-Data
cd Settings
cd System
rename greet.bat greet.ter
cd ../
cd ../
cd ../

set /p default_color%=<Terminal-Data\Settings\User\default_color.ter
color %default_color%

cls
goto terminal

:: Main program where user selects their first choices
:Terminal
cls
Echo.
Echo ======================================================================================================================
echo.
Echo Terminal-functions:
echo -------------------
echo.
Echo    External Links (0)
Echo    Windows Tools (1)
Echo    Windows Tools [Admin] (2)
Echo    Computer Functions (3)
Echo.
echo    Terminal Options (t)
Echo    Help (h)
Echo    Restart (r)
Echo    Exit (e)
Echo.
Echo ======================================================================================================================
set /p ter="Enter the number(s)/letter(s) that go with the function: "
::Functions that will redirect to the files inside of "Terminal-data"
if "%ter%"=="0" goto links
if "%ter%"=="1" call "Terminal-data\Windows_tools.bat"
if "%ter%"=="2" call "Terminal-data\Windows_Tools_Admin.bat"
if "%ter%"=="3" call "Terminal-data\Windows_Options.bat"

if "%ter%"=="t" call "Terminal-data\Terminal_options.bat"
if "%ter%"=="h" goto help
if "%ter%"=="r" goto Restart
if "%ter%"=="e" exit

if "%ter%"=="trv" start "" "https://rhysvault-test.netlify.app/the_vault/project_vault/terminal" && goto terminal
if "%ter%"=="rv" start "" "https://rhysvault.netlify.app/" && goto Terminal
if "%ter%"=="rvt" start "" "https://rhysvault-test.netlify.app/" && goto Terminal
if "%ter%"=="g" start "" "https://github.com/ItsRhysboi/Terminal" && goto Terminal
echo Invalid option
pause
goto Terminal

:: Restarts the program by opening a new window and closing the current one
:Restart
start "" "terminal.bat"
Echo User restarted the program > Terminal-data\settings\logs\log.log
exit

:Help
cls
Echo.
Echo ======================================================================================================================
Echo.
Echo To go to a certain function, type the letter(s) or number(s) located in the brackets "()"
Echo Commands may be case sensitive so check if they are capital letters or not
Echo Don't type the words inside of the "[]"
Echo.
Echo ======================================================================================================================
Echo.
pause
goto terminal

:links
Echo ======================================================================================================================
Echo.
echo External links:
Echo ---------------
echo.
Echo    View Terminal On Github (1)
Echo    View Terminal On Rhys Vault (2)
Echo    View Rhys' Vault (3)
Echo    View Rhys' Vault Test (4)
Echo.
Echo ======================================================================================================================
Echo.
set /p link="Enter the number/letter(s) that go with the function: "
if "%link%"=="1" start "" "https://rhysvault-test.netlify.app/the_vault/project_vault/terminal" && goto terminal
if "%link%"=="2" start "" "https://rhysvault.netlify.app/" && goto Terminal
if "%link%"=="3" start "" "https://rhysvault-test.netlify.app/" && goto Terminal
if "%link%"=="4" start "" "https://github.com/ItsRhysboi/Terminal" && goto Terminal