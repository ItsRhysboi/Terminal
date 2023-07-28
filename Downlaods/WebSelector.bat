@echo off
color 2f
title Site Selector by ItsRhysboi
:top
cls
color 2f
echo ***************************************************************
echo.
echo Site Selector, Updates every Thursday type "C" to go to the website Current version 1.3
echo.
echo ***************************************************************
echo.
echo Key: 
echo [1]  Google - Search Engine
echo [2]  Bing - Search Engine
echo [3]  Outlook - Mail Server
echo [4]  Gmail - Mail Server
echo [5]  ItsRhysboi`s Pastebin - Code Sharing
echo [6]  Pastbin Archive - Code Sharing
echo [7]  Shared OneDrive folder - File sharing
echo [8]  Shared GoogleDrive folder - File Sharing
echo [9]  Youtube - Entertainment 

echo.
echo [e] Exit
echo.
echo ***************************************************************
echo Enter the number of the website which you would like to go to:
echo.
set /p udefine=
echo.
echo ***************************************************************
if %udefine%==1 start www.google.com
if %udefine%==2 start www.bing.com
if %udefine%==3 start https://outlook.live.com
if %udefine%==4 start https://mail.google.com
if %udefine%==5 start www.pastebin.com/u/itsrhysboi
if %udefine%==6 start www.pastebin.com/archive
if %udefine%==7 start https://1drv.ms/f/s!AjVdF7Aj0ZWzgbErjkRw19KPOhStpQ?e=8pswca
if %udefine%==8 start https://drive.google.com/drive/folders/102lOOC5rUFM57Nsl2Box0nxFs7t6-2qv?usp=drive_link
if %udefine%==9 start www.youtube.com

if %udefine%==e goto exit
goto security

:thank
cls
echo ***************************************************************
echo.
echo Thank You for using Site Selector by ItsRhysboi
echo.
echo ***************************************************************
pause
exit
set /p udefine=
echo.
echo ***************************************************************
if %udefine%==b goto top
if %udefine%==e goto exit
:e
cls
echo ***************************************************************
echo.
echo Thank You for using Site Selector by ItsRhysboi
echo.
echo ***************************************************************
pause
exit

:security
echo Go back to console(y,n)
set /p security=
if %security%== y goto top
if %security%== n goto thank
goto exit

:exit
exit

