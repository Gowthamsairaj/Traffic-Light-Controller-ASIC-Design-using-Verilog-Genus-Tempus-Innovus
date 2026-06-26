# 🚦 Traffic Light Controller – RTL to GDSII ASIC Design Flow

## 📌 Project Overview

This project demonstrates the complete **RTL-to-GDSII ASIC Design Flow** for a **Traffic Light Controller** implemented using **Verilog HDL** and Cadence EDA tools. The controller is designed as a **Finite State Machine (FSM)** to manage traffic signals for the **North-South (NS)** and **West-East (WE)** directions. The project covers every stage of the ASIC implementation flow, including RTL design, functional verification, logic synthesis, logic equivalence checking (LEC), static timing analysis (STA), power and area analysis, physical design, and final GDSII-ready routed layout generation.

---

## 🎯 Project Objective

The objective of this project is to design and implement a Traffic Light Controller using Verilog HDL while gaining practical experience with the complete ASIC Design Flow using industry-standard Cadence EDA tools.

---

## 🚦 Traffic Light Operation

The controller operates using a six-state Finite State Machine (FSM).

| State | North-South | West-East |
|-------|-------------|-----------|
| S0 | 🟢 Green | 🔴 Red |
| S1 | 🟡 Yellow | 🔴 Red |
| S2 | 🔴 Red | 🔴 Red |
| S3 | 🔴 Red | 🟢 Green |
| S4 | 🔴 Red | 🟡 Yellow |
| S5 | 🔴 Red | 🔴 Red |

### LED Encoding

| Color | Binary |
|-------|--------|
| 🔴 Red | 100 |
| 🟡 Yellow | 010 |
| 🟢 Green | 001 |

A synchronous counter controls the duration of each traffic signal before transitioning to the next state.

---

# 🏗️ RTL-to-GDSII Design Flow

## 1️⃣ RTL Design

The Traffic Light Controller was designed in **Verilog HDL** using an FSM architecture consisting of six operating states. Sequential logic controls the state transitions, while combinational logic generates the LED outputs. Counter-based timing ensures the correct duration of each traffic signal.

---

## 2️⃣ Functional Verification

Functional verification was carried out using **Cadence NC Launch/Xcelium**. A Verilog testbench was developed to generate clock and reset signals and validate the FSM behavior.

Simulation verified:

- Correct state transitions
- Proper reset operation
- Clock functionality
- LED output sequence
- Functional waveform correctness

Waveforms were analyzed using **SimVision**.

---

## 3️⃣ Logic Synthesis

RTL synthesis was performed using **Cadence Genus**.

Generated outputs include:

- Technology-mapped Gate-Level Netlist
- Synthesis Schematic
- Cell Utilization Report
- Area Report

### Synthesis Summary

| Parameter | Value |
|-----------|-------|
| Total Standard Cells | 135 |
| Total Cell Area | 931.744 |

---

## 4️⃣ Logic Equivalence Checking (LEC)

Logic Equivalence Checking was performed to verify that the synthesized gate-level netlist is functionally identical to the RTL design.

LEC confirms:

- RTL matches synthesized netlist
- No logical mismatches
- Successful functional equivalence

---

## 5️⃣ Static Timing Analysis (STA)

Timing analysis was performed using **Cadence Tempus**.

Generated timing reports include:

- Critical Path Analysis
- Setup Timing
- Arrival Time
- Required Time
- Slack Analysis
- Timing Path Reports

These reports were used to analyze the timing performance and identify critical paths before physical implementation.

---

## 6️⃣ Power Analysis

Power estimation was performed after synthesis.

The generated reports include:

- Leakage Power
- Internal Power
- Switching Power
- Total Power

These reports provide insight into the power consumption of the design.

---

## 7️⃣ Area Analysis

Area reports were generated to evaluate the hardware resource utilization.

The reports include:

- Standard Cell Area
- Total Cell Count
- Net Area
- Overall Design Area

---

## 8️⃣ Physical Design

Physical implementation was completed using **Cadence Innovus**.

The physical design flow includes:

- Floorplanning
- Power Planning
- Standard Cell Placement
- Clock Tree Synthesis (CTS)
- Routing
- Timing Optimization
- Physical Verification

The design was successfully implemented and optimized for timing and routing.

---

## 9️⃣ Final Routed Layout

The project concludes with the successful generation of a **GDSII-ready routed layout**, completing the ASIC implementation flow from RTL to physical design.

---

# 🛠️ Tools Used

| Tool | Purpose |
|------|----------|
| Verilog HDL | RTL Design |
| Cadence NC Launch | Simulation |
| Cadence Xcelium | Functional Verification |
| SimVision | Waveform Analysis |
| Cadence Genus | Logic Synthesis |
| Cadence LEC | Logic Equivalence Checking |
| Cadence Tempus | Static Timing Analysis |
| Cadence Innovus | Physical Design & Routing |

---

# 📊 Project Deliverables

- ✔ RTL Design (Verilog)
- ✔ Verilog Testbench
- ✔ Functional Simulation Waveforms
- ✔ Gate-Level Netlist
- ✔ Synthesis Schematic
- ✔ Logic Equivalence Checking (LEC)
- ✔ Static Timing Analysis Report
- ✔ Area Report
- ✔ Power Report
- ✔ Timing Debug Report
- ✔ Floorplan
- ✔ Placement
- ✔ Clock Tree Synthesis (CTS)
- ✔ Routed Physical Layout
- ✔ GDSII-Ready Design

---

# 📁 Repository Structure

```
Traffic-Light-Controller/
│
├── RTL/
│   ├── TrafficLight.v
│   └── TrafficLight_tb.v
│
├── Simulation/
│   ├── Waveform.png
│   └── Simulation_Report.txt
│
├── Synthesis/
│   ├── Netlist.v
│   ├── Schematic.png
│   └── Area_Report.txt
│
├── LEC/
│   └── LEC_Result.png
│
├── Timing/
│   ├── Timing_Report.txt
│   └── Timing_Debug.png
│
├── Power/
│   └── Power_Report.txt
│
├── Physical_Design/
│   ├── Floorplan.png
│   ├── Placement.png
│   ├── CTS.png
│   ├── Routed_Layout.png
│   └── GDSII/
│
├── Images/
│
└── README.md
```

---

# 📷 Project Results

The repository includes screenshots and reports of:

- RTL Verilog Design
- Functional Simulation Waveforms
- Synthesis Schematic
- Logic Equivalence Checking Results
- Area Report
- Power Report
- Static Timing Report
- Timing Debug Analysis
- Floorplan
- Placement
- Clock Tree Synthesis (CTS)
- Final Routed Layout (Innovus)

---

# 🎓 Learning Outcomes

This project provided practical experience in:

- Verilog HDL Design
- Finite State Machine (FSM)
- RTL Design Methodology
- Functional Verification
- Logic Synthesis
- Static Timing Analysis (STA)
- Logic Equivalence Checking (LEC)
- Area Optimization
- Power Analysis
- Physical Design Flow
- Floorplanning
- Placement
- Clock Tree Synthesis
- Routing
- RTL-to-GDSII ASIC Design Flow
- Cadence Digital Design Environment

---

# 👨‍💻 Author

**GOWTHAMA_SAI_RAJ_RT**

Electronics and Communication Engineering Student

Interested in **VLSI Design, ASIC Design, RTL Design, Digital Design, Static Timing Analysis (STA), and Physical Design.**
