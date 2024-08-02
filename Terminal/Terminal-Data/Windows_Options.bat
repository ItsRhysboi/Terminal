@echo off
title Terminal - Made by ItsRhysBoi - v1.2

set /p default_color%=<Terminal-Data\Settings\User\default_color.ter
color %default_color%

cls
:options
Echo.
Echo ======================================================================================================================
Echo.
Echo    Restart Computer (1)
Echo    Shutdown computer (2)
Echo    Restart to Bios (3)
Echo.
Echo    Exit (e)
Echo.
Echo ======================================================================================================================
Echo.

set /p opt="Enter the number/letter that go with the function above: "
if "%opt%"=="1" goto Shutdown
if "%opt%"=="2" goto restart
if "%opt%"=="3" goto bios

if "%opt%"=="e" call "terminal.bat"
Echo Invalid Option
pause
goto options

:Shutdown
shutdown /s /f /t 0
exit

:restart
shutdown -r -t 10
exit

:bios
shutdown /r /fw
exit

:user
shutdown -i
exit