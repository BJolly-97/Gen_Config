@echo off

title Configurational Analysis v1.0

echo Checking and installing required Python modules...
python3 -m pip install --quiet --no-warn-script-location -r requirements.txt
if %errorlevel% neq 0 (
    echo Dependency install failed. Check Python installation.
    pause
    exit /b
)
echo All required modules installed.

echo.

cmd 