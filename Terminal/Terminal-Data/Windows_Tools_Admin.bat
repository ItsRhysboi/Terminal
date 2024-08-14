@echo off
cls
title Terminal - Made by ItsRhysBoi - v1.4

set /p default_color=<Terminal-Data\Settings\User\default_color.ter
color %default_color%

:ToolsAdmin
cls
Echo.
Echo ======================================================================================================================
Echo.
Echo Terminal must be ran in admin to use these features
Echo.
Echo    Diskpart (1)
Echo.
Echo    Exit (e)
Echo.
Echo ======================================================================================================================
Echo.

set /p ta="Enter the number/letter that go with the function above: "
if "%ta%"=="1" goto diskpart
if "%ta%"=="e" call terminal

echo Invalid option
pause
goto ToolsAdmin

:diskpart
cls
diskpart