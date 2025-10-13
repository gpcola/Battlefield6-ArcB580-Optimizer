@echo off
title Battlefield 6 Prep - 1440p Mode
color 0B

powercfg -setactive SCHEME_MAX

reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v HwSchMode /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "C:\Games\Battlefield6\BF6.exe" /t REG_SZ /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE" /f

taskkill /F /IM "OneDrive.exe"
taskkill /F /IM "Discord.exe"
taskkill /F /IM "SteamWebHelper.exe"

QRes.exe /x:2560 /y:1440 /r:144

start "" "LogTools\HWMonitor.lnk"
start "" "LogTools\CapFrameX.lnk"
start powershell -ExecutionPolicy Bypass -File "LogTools\LogTemp.ps1"

start "" "C:\Program Files\Intel\Arc Control\ArcControl.exe"

start "" "C:\Games\Battlefield6\BF6.exe"

echo Battlefield 6 launched in 1440p mode. Enjoy!
pause
