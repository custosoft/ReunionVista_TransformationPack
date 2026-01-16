@echo off

net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

copy "%~dp0Start Menu\Blank.bmp" "%ProgramFiles(x86)%\StartIsBack\Orbs\" /y

copy "%~dp0Start Menu\Vista.skin7" "%ProgramFiles%\Open-Shell\Orbs\Skins" /y

copy "%~dp0Start Menu\orb.png" "%SystemRoot%\Resources\" /y

reg import "%~dp0StartIsBack.reg"

reg import "%~dp0taskbar.reg"

reg import "%~dp0Openshell.reg"

taskkill /f /im explorer.exe & start explorer.exe
