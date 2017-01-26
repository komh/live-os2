@echo off
setlocal

set PREFIX=%1
if "%PREFIX%" == "" set PREFIX=\usr\local
set DESTDIR=%2
set INCDIR=%DESTDIR%%PREFIX%\lib\live
set LIBDIR=%DESTDIR%%PREFIX%\lib\live

echo Installing headers to %INCDIR%...
for %d in (liveMedia UsageEnvironment BasicUsageEnvironment groupsock) do xcopy %d\include %INCDIR%\%d\include\

echo Installing libraries to %LIBDIR%...
for %d in (liveMedia UsageEnvironment BasicUsageEnvironment groupsock) do xcopy %d\lib%d.a %LIBDIR%\%d\

endlocal
