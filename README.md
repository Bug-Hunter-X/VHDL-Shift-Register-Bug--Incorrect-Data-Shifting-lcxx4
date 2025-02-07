# VHDL Shift Register Bug

This repository demonstrates a common, subtle bug in VHDL code related to shift registers. The provided VHDL code attempts to implement a simple shift register, but it fails to correctly shift the data.  The code instead copies the entire input vector to the register on each clock cycle.

## Bug Description
The issue lies in the process within the `behavioral` architecture. The assignment `reg <= data_in;` overwrites the entire register with the input data, not shifting it.  The solution requires using a more appropriate method of shifting the data. 

## Solution
The provided solution demonstrates how to properly implement a shift register using VHDL, ensuring correct data shifting on each clock edge.