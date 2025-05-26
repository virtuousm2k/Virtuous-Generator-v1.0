@echo off
title Nitro Generator Setup
color 0D

echo [~] Setting up your Nitro Generator...
echo.

:: Check if Python is installed
python --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo [!] Python is not installed. Please install Python 3.x from https://www.python.org/downloads/
    pause
    exit /b
)

:: Upgrade pip just in case
echo [~] Upgrading pip...
python -m pip install --upgrade pip

:: Install required libraries
echo [~] Installing required libraries...
pip install requests

echo.
echo [✓] Setup Complete!
echo.

pause
