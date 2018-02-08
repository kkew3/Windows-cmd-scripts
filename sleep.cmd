@ECHO OFF
SETLOCAL

REM
REM This script pause for N seconds, where N must be a positive integer.
REM
REM Usage:
REM
REM     sleep.cmd N
REM
REM Author: Kaiwen Wu
REM Last modification date: 2018-01-20
REM

SET "prog=%0"
IF "%1"=="" GOTO :help
IF "%1"=="/?" GOTO :help
SET /A "sec=%1+1" > NUL 2>&1
IF ERRORLEVEL 1 GOTO :help

ping 127.0.0.1 -n %sec% > nul
GOTO :EOF

:help
ECHO This script pause for N seconds, where N must be a positive integer.
ECHO.
ECHO Usage:
ECHO.
ECHO     %prog% N
ECHO.
ECHO Example:
ECHO.
ECHO     %prog% 5 ^&^& dir
GOTO :EOF
