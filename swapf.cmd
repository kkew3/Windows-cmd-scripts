@ECHO OFF
REM
REM This script swaps the names of two files under the same directory
REM
REM Args:
REM     filename1
REM     filename2
REM
REM Usage:
REM
REM     swapf filename1 filename2
REM

SETLOCAL
REM Show help
IF "%1"=="/?" GOTO showhelp
REM Test presence of two arguments
IF "%1"=="" GOTO ERRARGS
IF "%2"=="" GOTO ERRARGS
REM Test existence of two arguments
IF NOT EXIST "%1" GOTO ERRARGS
IF NOT EXIST "%2" GOTO ERRARGS
REM Test comman directory of the two arguments
IF NOT "%~dp1"=="%~dp2" GOTO ERRARGS

CALL:gtmpname
RENAME "%1" %TMPFNAME%
RENAME "%2" "%~nx1"
RENAME "%~dp1%TMPFNAME%" "%~nx2"
GOTO :EOF

:gtmpname
REM gtmpname - Generate temp filename
REM This function sets an unused filename to variable TMPFNAME
SET "TMPFNAME=swapf_%RANDOM%.tmp"
IF EXIST %TMPFNAME% GOTO tmpfname
GOTO :EOF

:showhelp
ECHO This script swaps the names of two files under the same directory
ECHO.
ECHO Args:
ECHO     filename1
ECHO     filename2
ECHO.
ECHO Usage:
ECHO.
ECHO     swapf filename1 filename2
GOTO :EOF

:ERRARGS
CALL:showhelp
EXIT /B 1
