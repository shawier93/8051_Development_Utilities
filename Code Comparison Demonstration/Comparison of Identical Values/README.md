# Code Comparison Demonstration

[Repository overview](../../README.md) · [Compare implementations](../README.md)

Demonstrate a comparison whose two operands come from the same memory value.

**Implementation:** Comparison Of Identical Values

**Input:** values stored in memory.  
**Output:** inspect memory in debugger.

## Inputs and results

| Parameter | Description |
| --- | --- |
| Input | A fixed value in the source |
| Output | An idle loop, with no user-facing result |

## Worked example

Both compared values are 12H, so they are equal. The program then remains in its final loop.

### Calculation details

Run from the start. The code overwrites 50H with 12H, loads A from 50H and compares A against 50H. Both are 12H. The comparison falls through to EXIT and SJMP $ keeps the CPU there.

## Program operation

### Functional flowchart

```mermaid
flowchart TD
A["Load fixed value at memory address 50H"] --> B["Read same value into accumulator"]
B --> C{"Compare accumulator with 50H"}
C -->|Equal: actual path| D["Enter idle loop"]
C -->|Different: unreachable for these presets| D
D --> D
```

[Detailed control flow](Control%20Flow.md)

### Simplified block diagram

```mermaid
flowchart TD
A["Input: Values stored in memory"] -->|Values or events| B["8051 application logic"]
B -->|Working values| C["Registers and internal memory"]
C -->|Saved values| B
B -->|Results or control signals| E["Output: Inspect memory in debugger"]
```

Results are available in memory without a display.

[Assembly source](source.asm)
