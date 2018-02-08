@ECHO OFF

REM
REM Cd to home directory
REM

IF "%1"=="/?" (
  ECHO Usage: cdhome ^| cdhome directory
  GOTO :EOF
)
CD /D "%USERPROFILE%"
IF NOT "%1"=="" CD "%1"
