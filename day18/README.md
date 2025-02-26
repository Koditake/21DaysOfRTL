# Day 18
Design and verify a APB slave interface which utilises the memory interface designed on day17

## Interface Definition
The module should have the following interface:

```SystemVerilog
module day18 (
    input         wire        clk,
    input         wire        reset,

    input         wire        psel_i,
    input         wire        penable_i,
    input         wire[9:0]   paddr_i,
    input         wire        pwrite_i,
    input         wire[31:0]  pwdata_i,
    output        wire[31:0]  prdata_o,
    output        wire        pready_o
);
```
## Coding Exercise
You're expected to code both the RTL and testbench for the problem. Your testbench should include the stimulus and checkers.

## NOTE
The testcase will show PASSED as long as the RTL and testbench compile, but it doesn't imply that the implemented logic is correct.
