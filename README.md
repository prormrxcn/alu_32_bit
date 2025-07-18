# 32-bit ALU ASIC Design (OpenLane + Sky130)

This repository contains a 32-bit Arithmetic Logic Unit (ALU) implemented in Verilog and synthesized using OpenLane and the SkyWater SKY130 PDK.

## 🧠 Features

- 32-bit wide operands
- Supports core ALU operations: ADD, SUB, AND, OR, XOR, etc.
- ASIC synthesizable RTL
- OpenLane flow compatible
- Synthesized and placed using Sky130 standard cell library

## 🛠️ Tools Used

- [OpenLane](https://github.com/The-OpenROAD-Project/OpenLane)
- [SkyWater SKY130 PDK](https://github.com/google/skywater-pdk)
- KLayout for GDS viewing
- GTKWave for waveform analysis

## 🧪 How to Run (Quick Guide)

```bash
cd OpenLane
make mount
cd designs/ALU
flow.tcl -design ALU
```
