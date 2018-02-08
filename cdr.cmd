@ECHO OFF

REM
REM Cd to symbolic-link-free version of current working directory
REM

FOR /F "delims=" %%A IN ('python -c "from pathlib import Path; print(Path().resolve());"') DO CD /D "%%A"
