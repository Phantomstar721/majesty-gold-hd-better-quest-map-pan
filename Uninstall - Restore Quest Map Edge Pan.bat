@echo off
setlocal
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\Restore-QuestMapEdgePan.ps1"
echo.
pause
