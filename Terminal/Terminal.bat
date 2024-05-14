@echo off
title Terminal - Made by ItsRhysBoi - v1.1

set /p default_color=<Terminal-data\settings\default_color.ter
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
Echo    View Terminal On Github (g)
Echo    View Terminal On Rhys Vault (trv)
Echo    View Rhys' Vault (rv)
Echo    View Rhys' Vault Test (rvt)
Echo.
Echo ======================================================================================================================
set /p ter="Enter the number(s)/letter(s) that go with the function: "
::Functions that will redirect to the files inside of "Terminal-data"
if "%ter%"=="1" call "Terminal-data\Windows_tools.bat"
if "%ter%"=="2" call "Terminal-data\Windows_Tools_Admin.bat"
if "%ter%"=="3" call "Terminal-data\Troll.bat"

if "%ter%"=="t" goto Terminal-options
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

:Terminal-options
cls
Echo.
Echo ======================================================================================================================
Echo.
Echo    Reinstall Terminal (1)
Echo    Change Color (2)
Echo    Verify Files and Folders in Terminal-data directory (3)
Echo.
Echo    Exit (e)
Echo.
Echo ======================================================================================================================
Echo.

set /p teo="Enter the number/letter(s) that go with the function: "
if "%teo%"=="1" goto Reinstall
if "%teo%"=="2" goto color 
if "%teo%"=="3" goto VerifyFiles
if "%teo%"=="e" goto terminal
Echo Invalid Option
pause
goto Terminal-options

:VerifyFiles
cls
Echo.
Echo ======================================================================================================================
Echo.
Echo Checking files/folders in root directory...
Echo -------------------------------------------
Echo.
::Check if Terminal-data exsists
if exist "Terminal-data" (
    Echo Folder: Terminal-Data [Verified]
) else (
    Echo Terminal-data [Failed Verification] 
)

::Checks terminal.bat
if exist "terminal.bat" (
    Echo File: Terminal.bat [Verified]
) else (
    Echo File: Terminal.bat [Failed Verification]
)

Echo.
Echo.
Echo Checking files/folders in Termina-data...
Echo -----------------------------------------
Echo.
::change into the termial-data directory
cd terminal-data

::Check the scripts folder
if exist "Scripts" (
    Echo Folder: Scripts [Verified]
) else (
    Echo Folder: Scripts [Failed Verification]
)

::Checks the settings folder
if exist "Settings" (
    Echo Folder: Settings [Verified]
) else (
    Echo Folder: Settings [Failed Verification]
)

::Checks the troll.bat file
if exist "Troll.bat" (
    Echo File: Troll.bat [Verified]
) else (
    Echo File: Troll.bat [Failed Verification]
)

::Checks the Windows_tools.bat file
if exist "Windows_tools.bat" (
    Echo File: Windows_tools.bat [Verified]
) else (
    Echo File: Windows_tools.bat [Failed Verification]
)

:: Checks the Windows_tools_Admin.bat file
if exist "Windows_tools_admin.bat" (
    Echo File: Windows_tools_admin.bat [Verified]
) else (
    Echo File: Windows_tools_admin.bat [Failed Verification]
)
cd Scripts
Echo.
Echo Checking files/folders in Scripts...
Echo ------------------------------------
Echo.

if exist "cmd" (
    Echo Folder: cmd [Verified]
) else (
    Echo Folder: cmd [Failed Verification]
)

if exist "delete" (
    Echo Folder: delete [Verified]
) else (
    Echo Folder: delete [Failed Verification]
)

if exist "Dir" (
    Echo Folder: Dir [Verified]
) else (
    Echo Folder: Dir [Failed Verification]
)

if exist "Fork" (
    Echo Folder: Fork [Verified]
) else (
    Echo Folder: Fork [Failed Verification]
)

if exist "Matrix" (
    Echo Folder: Matrix [Verified]
) else (
    Echo Folder: Matrix [Failed Verification]
)

if exist "WindowsProductKeyFinder" (
    Echo Folder: WindowsProductKeyFinder [Verified]
) else (
    Echo Folder: WindowsProductKeyFinder [Failed Verification]
)

if exist "Wontleave" (
    Echo Folder: WontLeave [Verified]
) else (
    Echo Folder: WontLeave [Failed Verification]
)

Echo.
Echo.
Echo Checking files/folders in Scrpts sub directorys...
Echo --------------------------------------------------
Echo.

cd cmd
if exist "cmd.bat" (
    Echo File: cmd/cmd.bat [Verified]
) else (
    Echo File cmd/cmd.bat [Failed Verification]
)
cd ../

cd delete
if exist "delete.bat" (
    Echo File: delete/delete.bat [Verifiedss]
) else (
    Echo Fil: delete/delete.bat [Failed Verification]
)
cd ../

cd dir
if exist "Dir.bat" (
    Echo File: Dir/Dir.bat [Verified]
) else (
    Echo File: Dir/Dir.bat [Failed Verification]
)
cd ../

cd Fork
if exist "Fork.bat" (
    Echo File: Fork/Fork.bat [Verified]
) else (
    Echo File: Fork/Fork.bat [Failed Verification]
)
cd ../

cd Matrix
if exist "Matrix.bat" (
    Echo File: Matrix/Matrix.bat [Verified]
) else (
    Echo File: Matrix/Matrix.bat [Failed Verification]
)
cd ../

cd WindowsProductKeyFinder
if exist "keys" (
    Echo Folder: Keys [Verified]
) else (
    Echo Folder: Keys [Failed Verification]
)

if exist "Finder.vbs" (
    Echo File: WindowsProductKeyFinder/Finder.vbs [Verified]
) else (
    Echo File: WindowsProductKeyFinder/Finder.vbs [Failed Verification]
)
cd ../

cd WontLeave
if exist "main.vbs" (
    Echo File: WontLeave/Main.vbs [Verified]
) else (
    Echo File: WontLeave/Main.vbs [Failed Verification]
)
cd ../
cd ../

cd settings
Echo.
Echo.
Echo Checking files/folders in Settings...
Echo -------------------------------------
Echo.

if exist "default_color.ter" (
    Echo File: default_color.ter [Verifiedif]
) else (
    Echo File: default_color.ter [Failed Verification]
)
cd ../
cd ../
Echo.
Echo Verification finished
Echo If files/folder show [Failed Verification] reinstall the progra or download the individual files from
Echo.
Echo ======================================================================================================================
Echo.
pause
goto Terminal-options

:Reinstall
start "https://rhysvault.netlify.app/the_vault/project_vault/terminal"
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
Echo ======================================================================================================================
Echo.
set /p col="Enter a color letter: "
Echo %col% > Terminal-data\settings\default_color.ter
color %col%
goto terminal-options