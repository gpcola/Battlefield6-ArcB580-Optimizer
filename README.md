# Battlefield 6 Arc B580 Optimization Suite

This repository contains a single all-in-one BAT script that optimizes your system and launches Battlefield 6 with resolution-specific presets. Designed for Intel Arc B580 + i3‑12400 + 64 GB DDR4‑3600 builds.

---

## 🎯 Purpose

- Apply optimal Windows power and display settings
- Enable GPU scheduling and disable fullscreen optimizations
- Kill background apps before launch
- Launch Arc Control and Battlefield 6 with resolution-specific presets
- Start monitoring tools and telemetry logging via PowerShell

---

## 🚀 Usage

1. Run `Battlefield6_Launcher.bat` as Administrator.
2. Choose your resolution:
   - `[1]` 4K (3840×2160 @ 60Hz)
   - `[2]` 1440p (2560×1440 @ 144Hz)
   - `[3]` 1080p (1920×1080 @ 120Hz)
3. The script will:
   - Apply system tweaks
   - Launch HWMonitor, CapFrameX, and `LogTemp.ps1`
   - Set resolution via `QRes.exe`
   - Launch Arc Control and Battlefield 6

---

## 🛠️ Requirements

- Windows 10/11
- Intel Arc B580 GPU
- Intel Arc Control installed
- `QRes.exe` in the same folder as the BAT file
- Optional: HWMonitor, CapFrameX, `LogTemp.ps1` in `LogTools/`

---

## 📈 Telemetry Logging

`LogTemp.ps1` logs GPU temperature, CPU usage, and timestamp to a CSV file in your Documents folder. You can extend this with FPS logging via CapFrameX or RTSS.

---

## 📦 Folder Structure

Battlefield6_ArcB580_Optimizer/
├── Battlefield6_Launcher.bat
├── QRes.exe
├── LogTools/
│   ├── HWMonitor.lnk
│   ├── LogTemp.ps1
│   └── CapFrameX.lnk
└── Assets/
    └── ArcControl_Profile_Screenshot.png

---

## 🧠 Credits

- [QRes by Kaustubh Patange](https://github.com/KaustubhPatange/QRes)
- Arc Control by Intel
- HWMonitor by CPUID
- CapFrameX by ComputerBase

---

## 📄 License

This project is licensed under the BSD 3-Clause License. See [`LICENSE.txt`](LICENSE.txt) for details.

