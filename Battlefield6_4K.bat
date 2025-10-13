@echo off
title Battlefield 6 Prep - 4K Mode
color 0A

:: Set Windows Power Plan to Ultimate Performance
powercfg -setactive SCHEME_MAX

:: Enable GPU Scheduling
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v HwSchMode /t REG_DWORD /d 2 /f

:: Disable Fullscreen Optimizations
reg add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "C:\Games\Battlefield6\BF6.exe" /t REG_SZ /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE" /f

:: Kill background apps
taskkill /F /IM "OneDrive.exe"
taskkill /F /IM "Discord.exe"
taskkill /F /IM "SteamWebHelper.exe"

:: Set resolution to 3840x2160 @ 60Hz
QRes.exe /x:3840 /y:2160 /r:60

:: Launch monitoring tools
start "" "LogTools\HWMonitor.lnk"
start "" "LogTools\CapFrameX.lnk"
start powershell -ExecutionPolicy Bypass -File "LogTools\LogTemp.ps1"

:: Launch Arc Control
start "" "C:\Program Files\Intel\Arc Control\ArcControl.exe"

:: Launch Battlefield 6 with DLSS Quality flag
start "" "C:\Games\Battlefield6\BF6.exe" -dlss_quality

echo Battlefield 6 launched in 4K mode. Enjoy!
pause
