@ECHO OFF

REM
REM Create new empty file(s)
REM
REM Usage: touch [ filename ... ]
REM

IF "%1"=="/?" (
  ECHO Usage: touch [ filename ... ]
  GOTO :EOF
)

:LOOP
IF "%1"=="" GOTO :EOF
REM Assuming that "ZZZZZZZZZZ" is not used elsewhere
IF NOT EXIST "%1" <nul (SET /P ZZZZZZZZZZ=)> "%1"
SHIFT
GOTO LOOP

