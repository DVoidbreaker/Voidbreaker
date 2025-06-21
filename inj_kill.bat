@echo off
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

echo Terminating Voidbreaker.exe...

taskkill /f /t /im Voidbreaker.exe >nul 2>&1

echo Done.
pause
