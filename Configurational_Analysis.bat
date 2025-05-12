@echo off

title Configurational Analysis v1.0

cd /d "%~dp0exe"

set PATH=%PATH%;%CD%

echo Checking and installing required Python modules...
python3 -m pip install --quiet --no-warn-script-location -r requirements.txt
if %errorlevel% neq 0 (
    echo Dependency install failed. Check Python installation.
    pause
    exit /b
)
echo All required modules installed.

echo.

:alias_loop
set /p command="> Enter command (i.e. dict (Configurational Dictionaries), config (Configurational Analysis), vis (Configuration Visualiser) or exit): "

if /i "%command%"=="vis" (
    python3 Visualiser.py
    goto alias_loop
)

if /i "%command%"=="dict" (
    python3 Generalised_Clapp_v2.py
    goto alias_loop
)

if /i "%command%"=="config" (
    python3 Histograms_v2_2.py
    goto alias_loop
)

if /i "%command%"=="exit" (
	cmd
    goto :eof
)

echo Invalid command: %command%
goto alias_loop