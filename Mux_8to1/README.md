# 8:1 Multiplexer Verilog Implementation

This repository contains the Verilog code for an **8:1 Multiplexer** using **two 4:1 multiplexers** and **one 2:1 multiplexer**, its testbench, generated waveform files, and instructions to view the output using GTKWave.

## Files Included

- `mux_8to1.v` - Verilog code for the 8:1 multiplexer
- `mux_8to1_tb.v` - Testbench for the multiplexer
- `mux_8to1_tb.vcd` - Value Change Dump (VCD) file for waveform analysis
- `output.png` - Captured waveform image from GTKWave
- `output.gtkw` - GTKWave configuration file for viewing the waveform
- `mux_8to1_tb.out` - Executable output file generated after compilation

## 8:1 Multiplexer Description

An 8:1 multiplexer (MUX) is a combinational circuit that selects one of eight input signals based on three select lines and forwards the selected input to the output.

### Implementation Details:
- Uses **two 4:1 multiplexers** to process the lower and upper four input bits.
- Uses **one 2:1 multiplexer** to select between the outputs of the 4:1 MUXes.

**Equation:**
- **Y = (I0 \cdot S2' \cdot S1' \cdot S0') + (I1 \cdot S2' \cdot S1' \cdot S0) + (I2 \cdot S2' \cdot S1 \cdot S0') + (I3 \cdot S2' \cdot S1 \cdot S0)**
- **+ (I4 \cdot S2 \cdot S1' \cdot S0') + (I5 \cdot S2 \cdot S1' \cdot S0) + (I6 \cdot S2 \cdot S1 \cdot S0') + (I7 \cdot S2 \cdot S1 \cdot S0)**

## Truth Table

| S2 | S1 | S0 | Y  |
|----|----|----|----|
|  0 |  0 |  0 | I0 |
|  0 |  0 |  1 | I1 |
|  0 |  1 |  0 | I2 |
|  0 |  1 |  1 | I3 |
|  1 |  0 |  0 | I4 |
|  1 |  0 |  1 | I5 |
|  1 |  1 |  0 | I6 |
|  1 |  1 |  1 | I7 |

## Output Waveform
![8:1 Multiplexer Waveform](output.png)

## How to Run

1. **Compile the Verilog code using Icarus Verilog:**
   ```bash
   iverilog -o mux_8to1_tb.out mux_8to1.v mux_8to1_tb.v Mux_4to1/mux_4to1.v Mux_2to1/Mux_2to1.v
   ```

2. **Run the simulation:**
   ```bash
   vvp mux_8to1_tb.out
   ```
   This generates the `mux_8to1_tb.vcd` file.

3. **View the waveform using GTKWave:**
   ```bash
   gtkwave mux_8to1_tb.vcd
   ```