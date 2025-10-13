@echo off
title Battlefield 6 System Optimization
color 0E

echo === Applying System Tweaks for Battlefield 6 ===

:: ✅ Set Windows Power Plan to Ultimate Performance
echo Setting power plan to Ultimate Performance...
powercfg -setactive SCHEME_MAX

:: ✅ Enable Hardware-Accelerated GPU Scheduling
echo Enabling GPU Scheduling...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v HwSchMode /t REG_DWORD /d 2 /f

:: ✅ Disable Fullscreen Optimizations for Battlefield 6
echo Disabling Fullscreen Optimizations...
reg add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "C:\Games\Battlefield6\BF6.exe" /t REG_SZ /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE" /f

:: ✅ Kill background apps that may interfere
echo Closing background apps...
taskkill /F /IM "OneDrive.exe"
taskkill /F /IM "Discord.exe"
taskkill /F /IM "SteamWebHelper.exe"

:: ✅ Launch monitoring tools
echo Launching HWMonitor and CapFrameX...
start "" "LogTools\HWMonitor.lnk"
start "" "LogTools\CapFrameX.lnk"

:: ✅ Start telemetry logging (optional PowerShell script)
echo Starting telemetry logger...
start powershell -ExecutionPolicy Bypass -File "LogTools\LogTemp.ps1"

echo === System optimization complete ===
echo You may now run your preferred resolution BAT file:
echo   Battlefield6_4K.bat
echo   Battlefield6_1440p.bat
echo   Battlefield6_1080p.bat
pause
