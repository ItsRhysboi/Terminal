@echo off
color a

:Matrix
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
set /a curindex=%curindex% + 1
if %curindex% LSS 3000 goto :Matrix