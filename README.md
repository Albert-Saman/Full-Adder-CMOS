*This project is incomplete!*
# ⚡ Digital Full Adder Design and Analysis using CMOS 

![Status](https://img.shields.io/badge/Status-Active-success)
![Tools](https://img.shields.io/badge/Tools-LTspice%20|%20Verilog-blue)
![Tech](https://img.shields.io/badge/Technology-CMOS%20-orange)

Designing, testing, and implementing the Full-Adder for use in digital logic circuits
## 📌 Project Overview

This repository documents the complete design, simulation, and analysis of a **1-bit full-adder** circuit. The project focuses on implementation using **Transistor-level CMOS**, focusing on metrics like propagation delay (speed indication) and power consumption, and **Verilog HDL** for digital modeling and verification.

---
## ⚡ Objectives
- To design, simulate, and implement a 1-bit full-adder circuit using CMOS technology.
- Verify functionality through testbench and simulation
---

## 📐 Circuit Theory & Logic

The full adder computes the sum of three inputs: `A`, `B`, and `Carry-In (Cin)`. It produces two outputs: `Sum` and `Carry-Out (Cout)`.

### Truth Table

| A | B | Cin | Sum | Cout |
|:-:|:-:|:---:|:---:|:----:|
| 0 | 0 | 0   | 0   | 0    |
| 0 | 0 | 1   | 1   | 0    |
| 0 | 1 | 0   | 1   | 0    |
| 0 | 1 | 1   | 0   | 1    |
| 1 | 0 | 0   | 1   | 0    |
| 1 | 0 | 1   | 0   | 1    |
| 1 | 1 | 0   | 0   | 1    |
| 1 | 1 | 1   | 1   | 1    |

### Boolean Expressions
* **Sum** = $A \oplus B \oplus C_{in}$
* **Cout** = $(A \cdot B) + (C_{in} \cdot (A \oplus B))$

### Circuit Schematic
<img width="742" height="383" alt="image" src="https://github.com/user-attachments/assets/38970f55-aecc-4946-aa7b-bec04788ada7" />

---

## 🛠️ Implementation Details

### 1. Verilog Implementation
Verilog will be used to model the function of an ideal full-adder.
* **Style:** Behavioral & Structural Dataflow modeling.
* **Testbench:** A self-checking testbench that cycles through all 8 input vectors.

*LTspice will be used to model the circuits with CMOS technology*

### 2. CMOS Design (Complementary Metal-Oxide-Semiconductor)
* **Technology:** CMOS uses Complementary Metal-Oxide-Semiconductor Field-Effect Transistors (MOSFETs).
* **Structure:** Logic gates constructed using PMOS (pull-up network) and NMOS (pull-down network) transistors.
* **Simulation:** Transient analysis performed to verify signal propagation and voltage levels.
* How it Works: In a steady state (Logic 0 or 1), one of the transistors in the pair is always "OFF." This prevents a direct path from power to ground.
* Key Characteristic: It consumes almost zero static power. Power is only consumed during the switching moment (dynamic power).
* It dissipates very little heat and can be made microscopic, it allows us to pack billions of transistors onto modern CPUs and GPUs.
* A basic CMOS inverted is shown below:
<img width="277" height="490" alt="image" src="https://github.com/user-attachments/assets/1a91f2f8-0d2f-4d76-936d-3fa312e1caf1" />

---
