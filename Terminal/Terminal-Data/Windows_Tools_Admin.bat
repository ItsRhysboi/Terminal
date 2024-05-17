@echo off
cls
title Terminal - Made by ItsRhysBoi - v1.2

set /p default_color=<Terminal-Data\Settings\User\default_color.ter
color %default_color%

:ToolsAdmin
cls
Echo.
Echo ======================================================================================================================
Echo.
Echo    Remove Duplicate Disk Drive (1)
Echo.
Echo    Exit (e)
Echo.
Echo ======================================================================================================================
Echo.

set /p ta="Enter the number/letter(s) that go with the function: "
if "%ta%"=="1" goto diskpart
if "%ta%"=="2" goto netplwiz
if "%ta%"=="3" goto adduser
if "%ta%"=="e" call "Terminal.bat"

echo Invalid option
pause
goto ToolsAdmin

:rddd
start Terminal-Data\Scripts\RevoveDuplicateDiskDrive\RevoveDuplicateDiskDrive.reg