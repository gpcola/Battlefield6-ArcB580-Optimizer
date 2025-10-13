# Battlefield 6 Arc B580 Optimization Suite

This repository contains a modular set of Windows BAT scripts and system tweaks designed to optimize Battlefield 6 performance on systems using the Intel Arc B580 GPU, paired with an i3‑12400 CPU and 64 GB DDR4‑3600 RAM.

## 🎯 Purpose

To streamline pre‑launch configuration for Battlefield 6 across 4K, 1440p, and 1080p resolutions by:
- Applying optimal Windows power and display settings
- Disabling unnecessary background processes
- Launching Intel Arc Control and Battlefield 6 with resolution‑specific presets
- Enabling GPU scheduling and disabling fullscreen optimizations
- Logging system performance during gameplay

## 📦 Contents

Battlefield6_ArcB580_Optimizer/
├── Battlefield6_Optimize.bat
├── Battlefield6_4K.bat
├── Battlefield6_1440p.bat
├── Battlefield6_1080p.bat
├── QRes.exe
├── LogTools/
│   ├── HWMonitor.lnk
│   ├── LogTemp.ps1
│   └── CapFrameX.lnk
└── Assets/
    └── ArcControl_Profile_Screenshot.png

## 🛠️ Requirements

- Windows 10/11 with Intel Arc B580 GPU
- Intel Arc Control installed
- QRes.exe (included) for resolution switching
- Optional: HWMonitor, CapFrameX, or RTSS for telemetry

## 🚀 Usage

1. Run `Battlefield6_Optimize.bat` to apply system tweaks and launch monitoring tools.
2. Choose your resolution:
   - `Battlefield6_4K.bat`
   - `Battlefield6_1440p.bat`
   - `Battlefield6_1080p.bat`
3. Play Battlefield 6 with optimized settings and minimal background interference.

## 📈 Logging

Performance logs (FPS, temps, CPU usage) are captured via optional tools in the `LogTools/` folder. You can extend this with PowerShell or Python scripts for deeper analysis.

## 🧠 Credits

- QRes by Kaustubh Patange ([GitHub](https://github.com/KaustubhPatange/QRes))
- Arc Control by Intel
- HWMonitor by CPUID
- CapFrameX by ComputerBase

## 📄 License

This project is licensed under the BSD 3-Clause License. See `LICENSE.txt` for details.
