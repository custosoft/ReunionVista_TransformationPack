net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)


regsvr32 wucltux.dll 

"C:\Program Files\ViVeTool\vivetool.exe" /disable /id:25175482