@echo off
setlocal

REM List WSL environments
wsl --list --verbose

REM Check if Ubuntu-24.04 is installed
wsl --list --verbose | findstr "Ubuntu-24.04" >nul
if errorlevel 1 (
    echo Ubuntu-24.04 is not installed. Installing now...
    wsl --install -d Ubuntu-24.04
) else (
    echo Ubuntu-24.04 is already installed.
)

REM Set Ubuntu-24.04 as the default WSL distribution
wsl --set-default Ubuntu-24.04

REM Launch Ubuntu-24.04 WSL environment
wsl -d Ubuntu-24.04

endlocal