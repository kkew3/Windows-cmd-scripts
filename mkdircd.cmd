@ECHO OFF

REM
REM Make directory and cd to that directory if mkdir succeeds
REM
MKDIR "%1"
IF ERRORLEVEL 1 EXIT /B 1
IF ERRORLEVEL 0 CD "%1"
