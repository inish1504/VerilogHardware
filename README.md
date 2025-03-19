# Verilog Hardware Modeling

## Overview
This repository contains various Verilog hardware descriptions and projects that I have worked on. The goal is to design, simulate, and implement digital circuits using Verilog.

## Projects Included
| Project Name        | Description |
|--------------------|-------------|
| [**Half Adder**](Half_Adder) | A simple combinational circuit that performs binary addition of two bits. |
| [**Full Adder**](Full_Adder) | A combinational circuit that adds three input bits and produces a sum and carry output. |
| [**2:1 Multiplexer (Mux)**](2to1_Mux) | A digital circuit that selects one of two input signals based on a control signal. |
| [**4:1 Multiplexer (Mux)**](4to1_Mux) | A digital circuit that selects one of four input signals based on two control signals. |
| [**8:1 Multiplexer (Mux)**](8to1_Mux) | A hierarchical design that selects one of eight input signals using three control signals, implemented using two 4:1 Muxes and one 2:1 Mux. |
| [**2:4 Decoder (Active Low)**](Decoder_2to4) | A combinational circuit that decodes a 2-bit input into four active-low outputs. |
| [**3:8 Decoder (Active Low)**](Decoder_3to8) | A hierarchical decoder implemented using two 2:4 decoders to decode a 3-bit input into eight active-low outputs. |

## Tools Used
- **Icarus Verilog (iverilog)** - For simulation
- **GTKWave** - For waveform visualization

---
Created by [Inish](https://github.com/inish1504)