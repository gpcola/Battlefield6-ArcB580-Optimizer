@echo off
title Battlefield 6 Arc B580 Optimization Launcher
color 0E

echo ============================================
echo   Battlefield 6 Arc B580 Optimization Suite
echo ============================================
echo.

:: SYSTEM PREP
powercfg -setactive SCHEME_MAX
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v HwSchMode /t REG_DWORD /d 2 /f >nul
reg add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "C:\Games\Battlefield6\BF6.exe" /t REG_SZ /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE" /f >nul

taskkill /F /IM "OneDrive.exe" >nul 2>&1
taskkill /F /IM "Discord.exe" >nul 2>&1
taskkill /F /IM "SteamWebHelper.exe" >nul 2>&1

start "" "LogTools\HWMonitor.lnk"
start "" "LogTools\CapFrameX.lnk"
start powershell -ExecutionPolicy Bypass -File "LogTools\LogTemp.ps1"

echo.
echo ============================================
echo   Select Battlefield 6 Resolution Profile:
echo ============================================
echo   [1] 4K (3840x2160 @ 60Hz)
echo   [2] 1440p (2560x1440 @ 144Hz)
echo   [3] 1080p (1920x1080 @ 120Hz)
echo.

set /p choice=Enter your choice (1-3): 

if "%choice%"=="1" (
    QRes.exe /x:3840 /y:2160 /r:60
    start "" "C:\Program Files\Intel\Arc Control\ArcControl.exe"
    start "" "C:\Games\Battlefield6\BF6.exe" -dlss_quality
) else if "%choice%"=="2" (
    QRes.exe /x:2560 /y:1440 /r:144
    start "" "C:\Program Files\Intel\Arc Control\ArcControl.exe"
    start "" "C:\Games\Battlefield6\BF6.exe"
) else if "%choice%"=="3" (
    QRes.exe /x:1920 /y:1080 /r:120
    start "" "C:\Program Files\Intel\Arc Control\ArcControl.exe"
    start "" "C:\Games\Battlefield6\BF6.exe"
) else (
    echo [!] Invalid choice. Exiting...
    timeout /t 3
    exit /b
)

echo.
echo === Battlefield 6 launched. Enjoy your session! ===
pause
