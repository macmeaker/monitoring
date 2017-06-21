@echo off
REM check_iis_apppool.bat - macmeaker on GitHub - MIT license

for /f %%i in ('C:\Windows\system32\inetsrv\appcmd list apppool %1 /text:state') do set OUTP=%%i
IF %OUTP%==Stopped GOTO err
IF %OUTP%==Started GOTO ok
GOTO unknown

:err
echo CRITICAL: %1 is stopped
exit /B 2

:unknown
echo UNKNOWN: Something went wrong
exit /B 3

:ok
echo OK: %1 is started
exit /B 0
