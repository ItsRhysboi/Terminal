@echo off
cls

set /p default_color%=<Terminal-Data\Settings\User\default_color.ter
color %default_color%

:Terminal-options
cls
Echo.
Echo ======================================================================================================================
Echo.
Echo    Reinstall Terminal (1)
Echo    Change Color (2)
Echo    Activate Launch measage (3)
Echo.
Echo    Exit (e)
Echo.
Echo ======================================================================================================================
Echo.

set /p teo="Enter the number/letter(s) that go with the function: "
if "%teo%"=="1" goto Reinstall
if "%teo%"=="2" goto color 
if "%teo%"=="3" goto alm
if "%teo%"=="e" call "Terminal.bat"
Echo Invalid Option
pause
goto Terminal-options

:Reinstall
start "" "https://rhysvault.netlify.app/the_vault/project_vault/Batch/Terminal/Terminal_v1.1.zip"
goto Terminal-options

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
Echo To set a background color type the number or letter of the colour you want for the text 
Echo then the number or letter of the colour for background
Echo ======================================================================================================================
Echo.
set /p col="Enter a color letter: "
Echo %col% > Terminal-data\settings\user\default_color.ter
color %col%
goto terminal-options

:alm
cd terminal-data
cd settings
cd system
rename greet.ter greet.bat
cd ../
cd ../
cd ../
Echo Done
Echo Exiting
pause
exit