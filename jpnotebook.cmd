@ECHO OFF

REM
REM Start Jupyter notebook at current working directory
REM

START jupyter notebook --notebook-dir="%CD%"
