@echo off

set /p default_color=<settings\default_color.ter
color %default_color%

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
if "%ta%"=="e" call "terminal.bat"

echo Invalid option
pause
goto ToolsAdmin

:diskpart
diskpart
pause
goto ToolsAdmin: