BCD Adder (Verilog HDL)
📌 Project Overview

This project implements a BCD (Binary Coded Decimal) Adder using Verilog HDL.
Unlike a standard binary adder, a BCD adder ensures that the output remains within the valid decimal range (0–9) by applying a correction when required.

If the sum of two BCD digits exceeds 9, a correction factor of +6 (0110) is added to produce a valid BCD result and generate the correct carry output.

⚙️ Features

Adds two 4-bit BCD inputs

Generates:

Valid BCD Sum

Carry-out (Cout)

Automatic correction for invalid BCD sums (>9)

Designed using combinational logic

Fully verified through simulation

🧠 Design Logic
Step 1: Binary Addition

Perform normal 4-bit binary addition:

𝑆
𝑢
𝑚
=
𝐴
+
𝐵
+
𝐶
𝑖
𝑛
Sum=A+B+Cin
Step 2: Correction Condition

Correction is applied when:

Sum > 9 OR

Carry-out from binary addition is 1

Step 3: Add Correction Factor
𝐶
𝑜
𝑟
𝑟
𝑒
𝑐
𝑡
𝑒
𝑑
 
𝑆
𝑢
𝑚
=
𝑆
𝑢
𝑚
+
6
 
(
0110
)
Corrected Sum=Sum+6 (0110)

This ensures the output remains a valid BCD digit.

💡 Key Insights

BCD arithmetic requires additional correction logic beyond standard adders

Proper handling of carry generation at decimal boundaries is critical

Understanding reg vs wire usage is essential when working with always blocks

Clean testbench design improves debugging and waveform readability

🧪 Verification

Designed a testbench with multiple input combinations

Verified:

Valid outputs for inputs (0–9)

Proper correction for sums > 9

Observed results using waveform simulation in Vivado

🛠 Tools Used

Verilog HDL

Xilinx Vivado (Simulation & Synthesis)


🎯 Learning Outcomes

Strong understanding of BCD arithmetic and correction logic

Improved knowledge of RTL design and combinational circuits

Hands-on experience with testbench debugging

Better clarity on Verilog syntax (reg vs wire usage)

🚀 Future Improvements

Extend to multi-digit BCD addition

Implement carry-lookahead BCD adder

FPGA-based hardware implementation

Optimize for speed and area
