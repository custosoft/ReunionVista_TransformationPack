@echo off

"C:\Program Files\PowerRun\PowerRun.exe" cmd.exe /c ^ reg delete "HKCR\DesktopBackground\Shell\Display" /f

copy "%~dp0personalize.ico" "%SystemRoot%\Resources\"

"C:\Program Files\PowerRun\PowerRun.exe" cmd.exe /c ^ reg import "%~dp0personalize.reg"

