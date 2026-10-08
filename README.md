# VHDL ALU Design

A hierarchical arithmetic logic unit implemented in VHDL, featuring a reusable **1-bit ALU** and a **16-bit ripple-carry ALU** built from sixteen 1-bit slices.

This project was developed collaboratively as part of a university assignment.

## Features

- Structural 1-bit ALU with input inversion, logic gates, a full adder, and multiplexers.
- 16-bit ALU with a shared opcode decoder and a ripple-carry chain.
- Seven arithmetic and bitwise operations.
- Signed overflow indication for addition and subtraction.
- Quartus project settings, saved waveform files, and simulation screenshots.

## Architecture

`alu1bit.vhd` contains the `mux2to1`, `fulladder`, `mux4to1`, and `alu1bit` entities. Two input multiplexers select each operand or its inverse. AND, OR, XOR, and addition are computed in parallel, and a 4-to-1 multiplexer selects the result.

`ALU16.vhd` contains `CtrlCirc` and `ALU16`. The control circuit translates the 3-bit opcode into input-inversion signals, a 2-bit operation selector, and the initial carry. Bit 0 receives that initial carry; bits 1–15 receive the carry from the preceding slice.

Subtraction uses two’s complement: `a + NOT(b) + 1`. NOR and NAND use input inversion and De Morgan’s laws.

## 16-bit operations

| Opcode | Operation | Result |
| --- | --- | --- |
| `000` | AND | `a AND b` |
| `001` | OR | `a OR b` |
| `010` | ADD | `a + b` |
| `011` | SUB | `a - b` |
| `100` | NOR | `NOT(a OR b)` |
| `101` | NAND | `NOT(a AND b)` |
| `110` | XOR | `a XOR b` |
| `111` | Reserved | The current decoder falls back to AND. |

Arithmetic results are limited to 16 bits. `Ovfl` is computed as the XOR of the carry into and out of the most significant bit. This indicates signed overflow for ADD/SUB; the signal is not gated by the opcode, so it should be interpreted only for those operations.

## Interfaces

### 1-bit ALU

| Port | Direction | Width | Purpose |
| --- | --- | --- | --- |
| `a`, `b` | Input | 1 bit each | Operands |
| `Ainvert`, `Binvert` | Input | 1 bit each | Select inverted operands |
| `CarryIn` | Input | 1 bit | Carry input |
| `Operation` | Input | 2 bits | `00`: AND, `01`: OR, `10`: ADD/SUB, `11`: XOR |
| `Result` | Output | 1 bit | Selected result |
| `CarryOut` | Output | 1 bit | Full-adder carry, computed independently of the selected result |

### 16-bit ALU

| Port | Direction | Width | Purpose |
| --- | --- | --- | --- |
| `a`, `b` | Input | 16 bits each | Operands |
| `opcode` | Input | 3 bits | Operation selection |
| `result` | Output | 16 bits | ALU result |
| `Ovfl` | Output | 1 bit | Signed overflow indication for ADD/SUB |

Both ALUs are combinational circuits and have no clock or reset ports.

## Repository layout

| Path | Contents |
| --- | --- |
| `alu1bit/` | 1-bit VHDL source, Quartus project, and saved waveform inputs |
| `alu16bit/` | 16-bit VHDL source and Quartus project |
| `docs/` | Project documentation |
| `images/` | Waveform screenshots and RTL viewer exports |
| `README.md` | Project overview and usage |
| `.gitignore` | Exclusions for generated files |

The two source folders must remain siblings: the 16-bit Quartus project references `../alu1bit/alu1bit.vhd`.

## Tools and project settings

The supplied project files were created with **Intel Quartus Prime Lite 19.1** and select **ModelSim-Altera (VHDL)** as the simulation tool.

- 1-bit project: MAX V family, automatic device selection.
- 16-bit project: MAX 10 family, device `10M08DAF484C8G`.

These are project settings; the included material does not establish testing on a physical FPGA board.

## Opening the projects

1. Download or clone the repository, preserving the folder structure.
2. Open `alu1bit/alu1bit.qpf` or `alu16bit/ALU16.qpf` in Quartus.
3. Confirm that the selected device family is installed.
4. Run **Analysis & Synthesis**, then open the **RTL Viewer** to inspect the hierarchy.
5. For waveform simulation, use a compatible Quartus simulation setup and open the saved `.vwf` inputs.

The supplied 1-bit waveform inputs are:

- `waveform_add_sub.vwf`
- `waveform_and_or.vwf`
- `waveform_nand_nor_xor.vwf`

The supplied ZIP does not contain the seven 16-bit `.vwf` inputs referenced by `ALU16.qsf`. If they are unavailable, remove the missing waveform assignments through Quartus and recreate the inputs before rerunning those simulations. Screenshots document previously captured results but do not replace executable simulation inputs.

## Simulation previews

The following paths assume the original screenshot filenames are retained when their folder is renamed to `images`.

### 1-bit addition and subtraction

![1-bit addition and subtraction waveforms](images/vwf%20alu1bit%20add_sub.png)

### 1-bit AND and OR

![1-bit AND and OR waveforms](images/vwf%20alu1bit%20and_or%20.png)

### 1-bit NAND, NOR, and XOR

![1-bit NAND, NOR, and XOR waveforms](images/vwf%20alu1bit%20nand_nor_xor.png)

### 16-bit waveform capture

![16-bit ALU waveform capture](images/alu16bitvwf%20%281%29.png)

Additional waveform captures and RTL viewer exports are available in `images/`. Supporting documentation is in `docs/`.
