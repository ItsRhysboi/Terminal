@echo off 

echo do you want to delete all of your computer data? (y/n) 

pause >nul
echo Do not exit out of the screen or all computer data will be deleted.
ping localhost -n 2 > nul
echo Are you sure you want to delete all computer data? (y/n)
pause >nul
echo deleting all data...
echo.
echo.
pause localhost -n 2 > nul
dir /s
echo.
echo.
ping localhost -n 2 > nul
cls
echo error.. error.. Not all data deleted, are you sure you wish to stop? (y/n)
pause
echo.
echo.
ping localhost -n 1 > nul
cls
dir /s
echo.
echo.
ping localhost -n 2 >nul
cls
echo all data has been deleted..
pause
del "c:delete.bat"