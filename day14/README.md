# Day 14
Design and verify a parameterized fixed priority arbiter

## Interface Definition
- Output should be produced in a single cycle
- Output must be one-hot
- The module should have the following interface:


```SystemVerilog
module day14 #(
  parameter NUM_PORTS = 4
)(
    input       wire[NUM_PORTS-1:0] req_i,
    output      wire[NUM_PORTS-1:0] gnt_o   // One-hot grant signal
);
```

## Practical Application
Try solving [this](https://quicksilicon.in/course/rtl-design/module/least-recently-used) problem which uses this design to implement Least Recently Used (LRU) replacement policy for an N-way associative cache.
