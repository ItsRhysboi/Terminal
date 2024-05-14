@echo off

set /p default_color=<settings\default_color.ter
color %default_color%

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
if "%tol%"=="e" call "Terminal.bat"
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