@echo off

net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

xcopy "%~dp0Themes\*" "%SystemRoot%\Resources\Themes\" /E /I /H /Y

copy "%~dp0Themes.exe" "%SystemRoot%\Resources\" /y

start "" "%~dp0ThemeSwitcher.exe" C:\Windows\Resources\Themes\Aero10.theme