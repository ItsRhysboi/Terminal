@echo off
title Terminal - Made by ItsRhysBoi - v1.4
:startup
color 0f

Echo.
Echo    Booting Terminal...
timeout 2 > nul
Echo.
Echo    %cd%
Echo    Booting from: Terminal-Data\Settings\System\Startup.ter
Echo.
Echo    Starting Terminal
Echo.
if exist Terminal/Terminal-data Echo    Testing Terminal-Data (Passed)
if not exist Terminal/Terminal-data goto Failtd
timeout 1 > nul
if exist Terminal/Terminal-data/settings Echo    Testing System Settings (Passed)
if not exist Terminal/Terminal-data/settings goto fails
timeout 1 > nul
Echo.
Echo    Launching Subprocess
Echo.
Echo    Terminal Subprocess CalibrateOrigin: Terminal.bat
Echo.
timeout 1 >nul
cd Terminal
call Terminal.bat
exit

:Failtd
cls
color 40
Echo.
Echo    Folder Terminal-Data (not found)
Echo.
Echo    Terminal Shutting down
Echo.
Timeout 10
exit

:fails
cls
color 40
Echo.
Echo    Folder Terminal-Data/Settings (not found)
Echo.
Echo    Terminal Shutting down
Echo.
Timeout 10
exit