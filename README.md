Here’s a **clean, professional `README.md`** for your GitHub repo based on your report content:

---

# 🚀 RTL to GDS-II Implementation of `floor(log₂(X))`

## 📌 Project Overview

This project demonstrates the **complete VLSI design flow** — from RTL design to GDS-II layout — for implementing the function:

[
Y = \lfloor \log_2(X) \rfloor
]

where **X is an 8-bit unsigned input**.

The design is implemented using **Verilog HDL** and synthesized, placed, routed, and analyzed using **industry-standard Synopsys tools**.

---

## 👨‍💻 Author

**Mohammad Huda Ansari (23BEC147)**
Electronics and Communication Engineering
Pandit Deendayal Energy University (PDEU)

---

## 🎯 Problem Statement

* Implement `Y = floor(log₂(X))` using Verilog HDL
* Generate **GDS-II layout** using Synopsys flow
* Evaluate:

  * Design Area
  * Clock Frequency (with positive setup slack < 1)
  * Power Consumption

---

## 🛠️ Design Flow

### 1️⃣ RTL Development

* Behavioral modeling in Verilog HDL
* Modular and synthesizable design
* Testbench-based functional verification
* Simulation and debugging using:

  * Synopsys VCS
  * Synopsys Verdi

#### 📂 Files

* `log2_seq.v` – RTL design
* `log2_seq_tb.v` – Testbench

#### ✅ Sample Test Cases

| Input (X) | Output (Y) |
| --------- | ---------- |
| 55        | 5          |
| 15        | 3          |

---

### 2️⃣ Logic Synthesis

* RTL → Gate-level conversion using:

  * Synopsys Design Compiler
* Applied SDC constraints:

  * Clock definitions
  * Input/output delays
  * Load capacitance
* Target Library:

  * `saed32rvt_ff1p16v125c.db`

#### 📂 Files

* `run_dc.tcl` – Synthesis script
* `log2_seq.sdc` – Constraints
* `log2_seq.mapped.v` – Gate-level netlist

---

### 3️⃣ Physical Design

Performed complete backend flow using:

* Synopsys IC Compiler II

#### Steps:

* Floorplanning (core area, IO placement)
* Power planning (rings & grids)
* Placement (standard cells)
* Clock Tree Synthesis (CTS)
* Routing (global + detailed)

#### 📊 Results

* **Area:** 41.63
* **Power:** 1.053 W
* **Slack:** 0 ns

#### 📂 Outputs

* `log2_seq_routed.v`
* `.spef` files (parasitics)
* Constraint and scenario files

---

### 4️⃣ Static Timing Analysis (STA)

* Timing verification using:

  * Synopsys PrimeTime

#### Analysis:

* Setup & Hold checks
* Critical path identification
* Multi-corner timing validation

#### 📊 Results

* **Slack:** 0 ns
* ✅ No setup or hold violations

---

## 📈 Key Learnings

### 🔹 RTL Development

* Writing synthesizable Verilog
* Testbench design & debugging
* Functional simulation and waveform analysis

### 🔹 Logic Synthesis

* Constraint-driven optimization
* Understanding WNS, TNS
* Impact of PVT (Process, Voltage, Temperature)

### 🔹 Physical Design

* Floorplanning & power planning
* Placement and routing strategies
* Clock Tree Synthesis (CTS)
* DRC and layout verification

### 🔹 Static Timing Analysis

* Timing closure techniques
* Slack analysis and violation fixing
* Multi-corner validation

---

## 📁 Repository Structure

```
├── RTL/
│   ├── log2_seq.v
│   ├── log2_seq_tb.v
│
├── Synthesis/
│   ├── run_dc.tcl
│   ├── log2_seq.sdc
│
├── Physical_Design/
│   ├── routed files
│   ├── spef files
│
├── STA/
│   ├── timing reports
│
└── README.md
```

---

## ⚙️ Tools Used

* Verilog HDL
* Synopsys VCS
* Synopsys Verdi
* Synopsys Design Compiler
* Synopsys IC Compiler II
* Synopsys PrimeTime

---

## 📌 Notes

* The design successfully completes **RTL → GDS-II flow** with **timing closure achieved**.
* All outputs satisfy constraints with **zero timing violations**.


