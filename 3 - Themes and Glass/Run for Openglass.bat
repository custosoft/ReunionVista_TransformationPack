@echo off

net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

reg import "%~dp0og1.reg"

reg import "%~dp0og2.reg"

reg import "%~dp0og3.reg"

reg import "%~dp0Metrics.reg"

taskkill /f /im dwm.exe