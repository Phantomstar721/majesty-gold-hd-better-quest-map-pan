@echo off
setlocal
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\Install-QuestMapEdgePan.ps1"
echo.
pause
