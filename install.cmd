@echo off

setlocal

set PREFIX=%1
if "%PREFIX%" == "" set PREFIX=/@unixroot/usr/local

set DESTDIR=%2

call gmake.cmd install DESTDIR=%DESTDIR% PREFIX=%PREFIX%

endlocal
