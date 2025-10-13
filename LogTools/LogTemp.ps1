# LogTemp.ps1 — Lightweight telemetry logger
# Logs GPU temp, CPU usage, and timestamp to CSV

$logPath = "$env:USERPROFILE\Documents\BF6_Telemetry_Log.csv"
if (!(Test-Path $logPath)) {
    "Timestamp,CPU_Usage(%),GPU_Temp(C)" | Out-File $logPath
}

while ($true) {
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

    $cpuLoad = (Get-Counter '\Processor(_Total)\% Processor Time').CounterSamples[0].CookedValue
    $gpuTemp = (Get-WmiObject MSAcpi_ThermalZoneTemperature -Namespace "root/wmi" | Select-Object -First 1).CurrentTemperature
    $gpuCelsius = [math]::Round(($gpuTemp - 2732) / 10, 1)

    "$timestamp,$([math]::Round($cpuLoad,1)),$gpuCelsius" | Out-File $logPath -Append

    Start-Sleep -Seconds 10
}

